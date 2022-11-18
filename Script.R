q4 <- numeric(0)
n <- 4
counter <- 0
for (i in UKgas){
  counter = counter+1
  if(counter %% n == 0)
    q4 <- c(q4,i)
}

q1 <- numeric(0)
n <- 4
counter <- -1
for (i in UKgas){
  counter = counter+1
  if(counter %% n == 0)
    q1 <- c(q1,i)
}
