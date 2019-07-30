options(scipen = 100)
fp <- file("stdin", "r")
N <- scan(file=fp, what=numeric(0), n=1)
obs <- scan(file=fp, what=numeric(0), n=(N*3))

result <- log(obs[1]) + log(obs[2])
count <- 1
for(i in 1:N)
{
  for(j in 0:obs[(3*i)])
  {
    cal <- log(obs[(3*i-2)]) + j*log(obs[(3*i-1)])
    if(sum(result == cal) == 0)
    {
      count <- count + 1
      result[count] <- log(obs[(3*i-2)]) + j*log(obs[(3*i-1)])
    }
  }
}

cat(length(result))