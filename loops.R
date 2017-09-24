# Loops! 

analyze <- function(filename) {
  # Read in data from csv
  dat <- read.csv(file = filename, header = F)
  
  # show mean plot using the "apply" function
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
}

inflammation_files <- c(
  "data/inflammation-01.csv",
  "data/inflammation-02.csv",
  "data/inflammation-03.csv",
  "data/inflammation-04.csv",
  "data/inflammation-05.csv",
  "data/inflammation-06.csv",
  "data/inflammation-07.csv",
  "data/inflammation-08.csv",
  "data/inflammation-09.csv",
  "data/inflammation-10.csv",
  "data/inflammation-11.csv",
  "data/inflammation-12.csv"
)

all_inflammation_files <- dir(
  path = "data",
  full.names = T,
  pattern = "^inflammation-"
)

for(filename in all_inflammation_files) {
  analyze(filename)
}

x <- c(1:5)
sum_x <- 0

for(i in x){
  cat("i:", i, "\n")
  cat("sum_x:", sum_x, "\n")
  sum_x <- sum_x+i
}

sum_x <- sum_x + x[1]
sum_x
sum_x <- sum_x + x[2]
sum_x
sum_x <- sum_x + x[3]
sum_x
sum_x <- sum_x + x[4]
sum_x
sum_x <- sum_x + x[5]
sum_x

exponentiate <- function(x,y) {
  result <- 1
  for(i in 1:y){
    result <- result*x
  }
  return(result)
}


product <- function(x,y) {
    result <- 0
    for (i in 1:y) {
      result <- result + x
    }
    return(result)
}

print_N <- function(N){
  for (i in 1:N){
    print(i)
  }
}


patient_mean_function <- function(filename) {
  dat <- read.csv(filename, header = F)
  rows_cols <- dim(dat) #gives us the number of rows and columns
  dat_cols <- rows_cols[2] # getting number of columns by selecting the second item in the vector
  means <- numeric(dat_cols) # creates an empty vector with the length of dat_cols
  for (i in 1:dat_cols) {
    means[i] <- mean(dat[,i])
  }
  plot(means, main = filename)
}

#one type of for loop
for(i in 1:N) {
  print(i)
}

#another type of for loop, returning the same thing
for(i in x) {
  print(i)
}


#making a function across rows, not columns
day_mean_function <- function(filename) {
  dat <- data.matrix(read.csv(filename, header = F))
  rows_cols <- dim(dat) #gives us the number of rows and columns
  print(rows_cols)
  dat_rows <- rows_cols[1] # getting number of rows by selecting the second item in the vector
  print(dat_rows)
  means <- numeric(dat_rows) # creates an empty vector with the length of dat_rows
  print(means)
  for (i in 1:dat_rows) {
    means[i] <- mean(dat[i,])
  }
  print(means)
  plot(means, main = filename)
}



