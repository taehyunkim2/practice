options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=2000000)

p2 <- 0
p1 <- 1
if(input == 0)
{
  cat(p2)
} else if(input == 1)
{
  cat(p1)
} else
{
  for(i in 2:input)
  {
    cur <- p1 + p2
    p2 <- p1
    p1 <- cur
  }
  cat(cur)
}