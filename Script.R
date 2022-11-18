q4 <- numeric(0)
n <- 4
counter <- 0
for (i in UKgas){
  counter = counter+1
  if(counter %% n == 0)
    q4 <- c(q4,i)
}
