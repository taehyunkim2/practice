input <- scan("stdin")
testcase <- input[1]
case <- input[-1]
counter <- function(x)
{
  result <- data.frame(NA)
  count <- 0
  n3 <- x %/% 3
  while(n3>=0)
  {
    remain3 <- x-n3*3
    n2 <- remain3 %/% 2
    while(n2>=0)
    {
      n1 <- remain3-n2*2
      count <- count+1
      result[count, 1] <- n1
      result[count, 2] <- n2
      result[count, 3] <- n3
      n2 <- n2 - 1
    }
    n3 <- n3 - 1
  }
  return(result)
}
counter2 <- function(x)
{
  result <- counter(x)
  result2 <- 0
  for(i in 1:length(result[, 1]))
  {
    result2 <- result2 + factorial(sum(result[i, ]))/(factorial(result[i, 1])*factorial(result[i, 2])*factorial(result[i, 3]))
  }
  return(result2)
}
result <- NA
for(i in 1:testcase)
{
  result[i] <- as.numeric(counter2(case[i]))
}
cat(result, sep="\n")
