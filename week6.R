df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  age = c(25, 30, 35, 40, 45),
  gender = c("F", "M", "M", "M", "F")
)
gender_split <- split(df, df$gender)
gender_split |> View()

gender_split$`F` |> View()
gender_split$`M` |> View()

my_vector <- c("apple", "banana", "orange", "grape", "pear", "pineapple")
filtered_vector <- my_vector[grep("a", my_vector)]
