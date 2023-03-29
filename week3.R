read.csv("data/opendata110f041.csv")

# bind a value to an object (data)
data <- read.csv("data/opendata110f041.csv")

# take of your target column
## Q: how to retrieve the column of a data frame
## A: data$Name

x <- data$average_age
class(x)
# compute mean
## Q: how to compute average in R

# wrong
# mean(data$average_age)
# mean(x)
x
as.numeric(x)
numeric_x <- as.numeric(x)

# wrong
# mean(numeric_x)
mean(numeric_x, na.rm = TRUE)

