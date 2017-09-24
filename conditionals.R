# Conditionals in R
# by Caleb Sponheim

num <- 3

if (num > 5) {
  print("it's a large one!")
} else {
  print("try again :(")
}

num <- 53
if (num > 100) {
  print("greater than 100")
}


# Exercise: write a function to return (0, -1, 1) based on the sign of the input integer. Call the function "sign"

num <- 0

sign <- function(num){
  if (num < 0) {
      print("-1")
  } else if (num > 0) {
      print("+1")
  } else {
     print("0")
  }
}

if ((1 > 0) & (-1 > 0)) {
  print("both parts are true")
} else {
  print("at least one part is false")
}


# Piping is the "or" condition in if statements
if ((1 > 0) | (-1 > 0)) {
  print("at least one part is true")
} else {
  print("at least one part is false")
}


# Grabbing odd numbers

n100 <- seq(1,100)

getOdd <- function(v) {
  return(v [v %% 2 == 1])
  }


# write a function that takes three arguments:
# 1. v, a vector of integers
# 2. x, a number to divide by to check for even divisability
# 3. y, a second number check for even divisability
# output shoudl be all numbers that are evenly divisible by both x and y
# NOTE: you must use a for loop


doublediv <- function(v,x,y) {
  result = c()
  count = 1
  for (i in v) {
    if (i %% x == 0 & i != 0){
      result[count] <- i 
      count <- count + 1
    } else if (i %% y == 0 & i != 0){
      result[count] <- i
      count <- count + 1
    }
  }
  return(result)
}

# more effecient version of this:

double_div2 <- function(v,x,y) {
  return(v[(v %% x == 0) & (v %% y == 0)])
}


# subsetting a vector is a lot faster than printing or creating a new vector


