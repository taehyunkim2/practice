options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=1)
order1 <- scan(file=fp, what=numeric(0), n=input)
order0 <- seq(1, input, 1)
count <- 0
for(i in 1:input)
{
  if(order0[i] != order1[i])
  {
    count <- count + 1
  }
}
cat(count)