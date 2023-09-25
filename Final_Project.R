library(readxl)

#Importing Data-set.
SS <- read_excel("D:/Data Science/Python/Dataset/Superstore.xlsx")
str(SS)
#Cheking the dimensions
dim(SS)
#cross checking rows and columns
nrow(SS)
ncol(SS)
#Having a look at first and last few rows of the data-frame.
head(SS)
tail(SS)
# Checking summary of both Data-sets
summary(SS)
#Checking for the missing values
missing_val <- function(x) {
  missing_counts <- sapply(x, function(col) sum(is.na(col)))
  return(missing_counts)
}

missing_val(SS)
library(ggplot2)
#EDA
ggplot(SS, aes(x = Sales, y = `Sub-Category`)) + geom_col()

ggplot(SS, aes(x = Sales, y = Discount)) +
  geom_line() +
  geom_point()

ggplot(SS, aes(x = Sales , y = Profit)) +
  geom_point(size = 1.5)

ggplot(SS, aes(area = "Profit", fill = "State", label = "State")) +
  geom_treemap() +
  geom_treemap_text(colour = "Blue",
                    place = "centre",
                    size = 15)