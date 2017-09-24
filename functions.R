# Functions in R
# Caleb Sponheim


fahr_to_kelvin <- function(temperature){
  # turns farhenheight into Kelvin
  kelvin <- ((temperature - 32) * (5 / 9)) + 273.15
  return(kelvin) # spits it back out of the function
  
}


kelvin_to_celsius <- function(temperature) {
  #turns kelvin into celsius (a much more basic operation)
  celsius <- temperature - 273.15
  return(celsius)
}

# Now, we can use the functions above to make a more complicated function below, but with a small number of lines.
fahr_to_celsius <- function(temperature) {
  temp_k <- fahr_to_kelvin(temperature)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}

# Define a function called "fence" which takes 2 vectors and turns the 2nd vector concatonated to the first

fence <- function(vector1, vector2) {
  #concatonates two vectors together
  output <- c(vector1,vector2)
  return(output)
}

# Remember: vectors have to contain the same type of data. 

input_1 <- 20

mySum <- function(input_1, input_2 = 20) {
  print(input_1)
  print(input_2)
  #input 1 here is not input 1 anywhere else, not even two lines above.
  output <- input_1 + input_2
  return(output)
}

# Function to center my data around a particular value

center <- function(data, desired) {
  # Centering is moving the entire dataset towards a given value. In this case, it is making the mean 0, then adding whatever desired value to further shift the distribution. 
  new_data <- (data- mean(data)) + desired
  return(new_data)
}

z <- c(0, 0, 0, 0)
z

# ------- "Apply" Functions -------

analyze <- function(filename) {
  # Read in data from csv
  dat <- read.csv(file = filename, header = F)
  
  # show mean plot using the "apply" function
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
}

analyze("data/inflammation-02.csv")
analyze("data/inflammation-03.csv")
analyze("data/inflammation-04.csv")
analyze("data/inflammation-05.csv")
analyze("data/inflammation-06.csv")



