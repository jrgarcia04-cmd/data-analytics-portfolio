install.packages("caret")
install.packages("gains")
install.packages("rpart")
install.packages("rpart.plot")
?install.packages(

  "igraph"
)
install.packages(
  
  "janitor"
)
install.packages(
  
  "arules"
)
library(tidyverse)
library(lubridate)
library(janitor)
library(recommenderlab)
library(arules)
library(rpart)
library(rpart.plot)
library(igraph)

# 2. Read data ---------------------------------


data <- read.csv("Sales_data_for_electronic_products.csv",
                 stringsAsFactors = FALSE)

data <- clean_names(data)

# keep completed orders only
data_completed <- data %>%
  filter(order_status == "Completed")

# basic type fixing
data_completed <- data_completed %>%
  mutate(
    purchase_date  = mdy(purchase_date),
    product_type   = as.factor(product_type),
    sku            = as.factor(sku),
    gender         = as.factor(gender),
    loyalty_member = as.factor(loyalty_member)
  )

# 3. Simple EDA + Plots ------------------------

# Figure 1: count of purchases by product type
fig1 <- ggplot(data_completed, aes(x = product_type)) +
  geom_bar() +
  theme_minimal() +
  labs(title = "Figure 1: Purchases by Product Type",
       x = "Product Type", y = "Count")

ggsave("figure1_purchases.png", fig1, width = 6, height = 4)

# Figure 2: total revenue by product type
revenue_type <- data_completed %>%
  group_by(product_type) %>%
  summarise(total_revenue = sum(total_price, na.rm = TRUE))

fig2 <- ggplot(revenue_type,
               aes(x = reorder(product_type, -total_revenue),
                   y = total_revenue)) +
  geom_col() +
  theme_minimal() +
  labs(title = "Figure 2: Revenue by Product Type",
       x = "Product Type", y = "Total Revenue")

ggsave("figure2_revenue.png", fig2, width = 6, height = 4)

# 4. Simple user–item matrix + recommender -----

# make a 0/1 table: customer x sku
user_item_tab <- xtabs(~ customer_id + sku, data = data_completed)
user_item_tab[user_item_tab > 0] <- 1  # convert to binary

rating_mat <- as(user_item_tab, "binaryRatingMatrix")

# train/test split for recommender
set.seed(123)
scheme <- evaluationScheme(rating_mat,
                           method = "split",
                           train = 0.8,
                           given = -1,
                           goodRating = 1)

rec_ubcf <- Recommender(getData(scheme, "train"), method = "UBCF")
pred_ubcf <- predict(rec_ubcf, getData(scheme, "known"),
                     type = "topNList", n = 5)

# quick evaluation 
eval_res <- evaluate(scheme, method = "UBCF",
                     type = "topNList", n = c(5, 10))
avg(eval_res)

# 5. Simple customer-level summary + tree ------

cust_summary <- data_completed %>%
  group_by(customer_id) %>%
  summarise(
    total_spent    = sum(total_price, na.rm = TRUE),
    n_transactions = n(),
    avg_order      = mean(total_price, na.rm = TRUE),
    age            = first(age),
    gender         = first(gender),
    loyalty_member = first(loyalty_member)
  )

med_spent <- median(cust_summary$total_spent, na.rm = TRUE)

cust_summary <- cust_summary %>%
  mutate(
    high_value = ifelse(total_spent > med_spent, 1, 0),
    high_value = factor(high_value)
  )

tree_model <- rpart(
  high_value ~ age + gender + loyalty_member +
    n_transactions + avg_order,
  data = cust_summary,
  method = "class"
)

# Figure 3: decision tree
png("figure3_tree.png", width = 700, height = 500)
rpart.plot(tree_model,
           main = "Figure 3: Decision Tree for High-Value Customers")
dev.off()

# 6. Simple association / network idea ---------

# create simple product pairs for co-purchase network
pairs_df <- data_completed %>%
  select(customer_id, sku) %>%
  distinct() %>%
  group_by(customer_id) %>%
  summarise(skus = list(as.character(sku)), .groups = "drop") %>%
  mutate(pairs = purrr::map(skus, ~ t(combn(.x, 2)))) %>%
  select(pairs) %>%
  tidyr::unnest(cols = c(pairs)) %>%
  as.data.frame()

colnames(pairs_df) <- c("sku1", "sku2")

# count how often each pair appears
edge_list <- pairs_df %>%
  group_by(sku1, sku2) %>%
  summarise(weight = n(), .groups = "drop")

# keep top edges for a small network
top_edges <- edge_list %>%
  arrange(desc(weight)) %>%
  head(30)

g <- graph_from_data_frame(top_edges, directed = FALSE)

# Figure 4: simple product network plot
png("figure4_network.png", width = 700, height = 500)
plot(g,
     vertex.label = NA,
     vertex.size = 5,
     main = "Figure 4: Product Co-Purchase Network (Top 30 Edges)")
dev.off()


