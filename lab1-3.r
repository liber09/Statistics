#Create a dataframe with 
#all letters in alphabeth
#random numbers between 0-3 with function runif()
#perfect squares 
#logarithms of random numbers above
my_letters <- LETTERS
random <-runif(50,0,3)
logarithms <- log(random)

df <- data.frame(my_lettes,random,logs)

print(df)
