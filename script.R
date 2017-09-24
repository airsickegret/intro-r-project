x <- 2
x <- 2 + 2
x <- c(1,3,5)
x <- 1 : 5
y <- 4


unzip("data/r-novice-inflammation-data.zip")
my_data <- read.csv("data/inflammation-01.csv", header = F)
(rows_cols <- dim(my_data))

class(my_data)

my_data[1,1]
my_data[1,5]
my_data[y,1]

#all of these create the same output:
my_data[1:5,1]
my_data[c(1,2,3,4,5),1]
my_data[x,1]

my_data[c(1,3,5),c(2,4,6)]
my_data[c(1,2,3),] # all the rows
my_data[,c(1,2,3)] # all the columns
my_data[, c("V1", "V2", "V3")] # same thing, but with column names

col_17 <- my_data$V17 #another way of subsetting data, with the "$" sign

mean(col_17)
sd(col_17)
median(col_17)
mean(my_data[1:4,3])
summary(my_data[1:4,c(1,2,3)])


max(my_data[5, 3:7]) #getting patient 5, days 3 through 7

# data is addressed by [rows, columns]

X <- 5:1
x[x < 3] # returns the elements of x that are less than three

my_col <- my_data[,2]
my_data[my_col == 0,2]
sub_col <- my_col[my_col == 0]
other_sub_col <- my_col[my_col != 0]
length(sub_col)
length(other_sub_col)
sum(other_sub_col)
sum(sub_col)
length(sub_col)+length(other_sub_col)

# adding a minus sign will return everything except the ones that are specified:
dim(my_data[,c(-1,-2,-3)])
x[-4] # will return "1 2 3 5"

# making a new column
my_data$x <- my_data$V1+my_data$V2 # one way

#another way:
col_v1 <- my_data$V1
col_v2 <- my_data$V2 #AKA my_data[,"V2"]

my_data$x <- col_v1+col_v2
