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


# create a data frame
df <- data.frame(
  Name = c("John", "Jane", "Bob", "Alice"),
  Age = c(25, 30, 20, 35),
  Gender = c("Male", "Female", "Male", "Female")
)
df$Gender == "Female"

df <- targetCourses
targetCourses$上課時間教室 == "週三"

# filter the data frame to only include females

female_df <- subset(df, 上課時間教室 == "週三")

# display the resulting data frame
female_df

targetCourses


# create a character vector
my_vec <- c("apple", "banana", "grape", "pineapple")
# use grep() to detect the pattern "app" in the vector
grep("app", my_vec)
# output: 1 4

grepl("app", my_vec)



# create a data frame
df <- data.frame(
  Name = c("John", "Jane", "Bob", "Alice"),
  Age = c(25, 30, 20, 35),
  Gender = c("Male", "Female", "Male", "Female")
)

# filter the data frame to only include females
female_df <- subset(df, Gender == "Female")

# display the resulting data frame
female_df

###

targetCourses$上課時間教室 |>
  stringr::str_subset("週三") |>
  stringr::str_extract(".{1}週三") |>
  table()


c("北一女", "臺北市立第一女子高級中學","北一女中") |>
  stringr::str_detect(
    "[台臺]?北市?立?第?一女子?高?級?中?學?"
  )

# REGEX

