# Review of R
# By Arjun, but documented by Caleb

#----- Assignment ------
#Type "option,'-'" to create an arrow automatically

x <- 3
y <- 1
z <- x + y

# ----- Functions -----

# Takes an input and returns the square of the number
square <- function(x) {
  return(x^2)
}

# ---- Conditionals ----

isOdd <- function(x) {
  if (x %% 2 == 1){
    return(TRUE)
  } else {
    return(FALSE)
  }
}


# ---- For Loops -----

# Summing up the elements in a vector

mySum <- function(v){
  acc <- 0
  for (x in v){
    acc <- acc + x
  }
  return(acc)
}

# ---- indexing ----

# () always mean arguments
# {} is the body of something, control flow
# [] is getting inside something

x <- c(1,2,3,4)


