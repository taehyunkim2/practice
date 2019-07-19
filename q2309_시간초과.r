input <- scan("stdin")
input <- sort(input)
index <- c(1,1,1,1,1,1,1,0,0)
result <- sum(index * input)
one <- 8
two <- 9
while(result != 100)
{
  for(i in one:2)
  {
    index[i] <- 1
    index[(i-1)] <- 0
    result <- sum(index * input)
    if(result == 100)
    {
      break
    }
  }
  if(result != 100)
  {
    two <- two-1
    one <- two-1
    index <- rep(1, 9)
    index[c(one, two)] <- 0
  }
}
cat(sort((input * index))[3:9], sep="\n")
input <- c(20,7,23,19,10,15,25,8,13)
