input <- scan("stdin")
options(scipen = 120)
testcase <- input[1]
cases <- input[-1]
result <- NA
for(i in 1:testcase)
{
  if(cases[i] == 0)
  {
    result[i] <- "1 0"
  } else if(cases[i] == 1)
  {
    result[i] <- "0 1"
  } else if(cases[i] == 2)
  {
    result[i] <- "1 1"
  } else
  {
    p2 <- p1 <- 1
    for(i in 3:cases[i])
    {
      c <- p1 + p2
      p2 <- p1
      p1 <- c
      result[i] <- paste0(p2, " ", c)
    }
  }
}
cat(result, sep="\n")