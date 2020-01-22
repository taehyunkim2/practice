options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=2000000)

testcase <- input[1]
input <- input[-1]

fibo <- function(num)
{
  fb <- c(1, 0)
  if(num != 0)
  {
    for(i in 3:(num+2))
    {
      fb[i] <- fb[i-1] + fb[i-2]
    }
  }
  cat(paste0(fb[num+1], " ", fb[num+2]))
}

for(i in 1:testcase)
{
  fibo(input[i])
}