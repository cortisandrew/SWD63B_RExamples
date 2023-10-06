#load preloaded iris dataset
#data <- iris

#load iris dataset from CSV file
mydata <- read.csv(
  "C:/Andrew/iris.data",
  header=FALSE)

#launch help file on read.csv
?read.csv

#help file for packages
??readxl

#set the column names for the data
colnames(mydata) = 
  c("Sepal.Length",
    "Sepal.Width",
    "Petal.Length",
    "Petal.Width",
    "Class")

#view the data in separate window
View(data)
# provide a summary of the data
summary(data)
# create a histogram of one attribute
hist(data$Sepal.Length)
# 2D plot of the data
plot(data$Sepal.Length, data$Sepal.Width)

??ggplot

# install a package
install.packages("ggplot2")

# load ggplot2 package
library("ggplot2")

ggplot(data=mydata) +
  aes(x = Sepal.Length, y = Sepal.Width) +
  geom_point(aes(color = Class, shape = Class))
