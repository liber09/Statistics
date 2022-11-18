# Get all values for first quarter each year
q1 <- numeric(0)
n <- 4
counter <- -1
for (i in UKgas){
  counter = counter+1
  if(counter %% n == 0)
    q1 <- c(q1,i)
}

# Get all values for second quarter each year
q2 <- numeric(0)
n <- 4
counter <- -2
for (i in UKgas){
  counter = counter+1
  if(counter %% n == 0)
    q2 <- c(q2,i)
}

# Get all values for third quarter each year
q3 <- numeric(0)
n <- 4
counter <- -3
for (i in UKgas){
  counter = counter+1
  if(counter %% n == 0)
    q3 <- c(q3,i)
}

# Get all values for fourth quarter each year
q4 <- numeric(0)
n <- 4
counter <- 0
for (i in UKgas){
  counter = counter+1
  if(counter %% n == 0)
    q4 <- c(q4,i)
}