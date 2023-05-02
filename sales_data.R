#Installing or importing the *dplyr* package which will be used for data cleaning and data manipulation

library(dplyr)

#We create a dataframe with a fictional sample sales data

set.seed(123)

sales_data <- data.frame(
  customer_id = sample(1:100, 1000, replace = TRUE),
  product = sample(letters[1:10], 1000, replace = TRUE),
  sales_amount = rnorm(1000, 500, 100),
  sale_date = sample(seq(as.Date('2022-01-01'), as.Date('2022-12-31'), by="day"), 1000, replace = TRUE)
)

#Now we export the dataframe as a CSV file

write.csv(sales_data, "sales_data.csv", row.names = FALSE)
