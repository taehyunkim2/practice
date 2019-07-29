# 이기면 1 비기면 0 지면 -1
options(scipen = 100)
fp <- file("stdin", "r")
round1 <- scan(file=fp, what=numeric(0), n=1)
result1 <- scan(file=fp, what=numeric(0), n=round1)
result2 <- scan(file=fp, what=numeric(0), n=round1)
# round1 <- scan(what=numeric(0), n=1)
# result1 <- scan(what=numeric(0), n=round1)
# result2 <- scan(what=numeric(0), n=round1)

result3 <- NA
for(i in 1:round1)
{
  if(result1[i] == result2[i])
  {
    result3[i] <- 0
  } else if((result1[i]-1) == result2[i] || (result1[i] == 1 && result2[i] == 3))
  {
    result3[i] <- 1
  } else
  {
    result3[i] <- -1
  }
}

count <- maxcount <- 1
if(round1 > 1)
{
  for(i in 2:round1)
  {
    if(result3[i] == 0)
    {
      if(result3[(i-1)] == 1)
      {
        result3[i] <- -1
      } else
      {
        result3[i] <- 1
      }
    }
    if(result3[i] == result3[(i-1)])
    {
      count <- count + 1
      if(count > maxcount)
      {
        maxcount <- count
      }
    } else
    {
      count <- 1
    }
  }
}

cat(maxcount)