options(scipen = 100)
fp <- file("stdin", "r")
num <- scan(file=fp, what=numeric(0), n=1)
obs <- scan(file=fp, what=numeric(0), n=num)

cal <- function(num, obs)
{
  if(num == 1)
  {
    return(0)
  } else
  {
    maxcount <- 0
    i <- 1
    while(i < num)
    {
      index <- 1
      while((i+index) <= num && obs[i] > obs[(i+index)])
      {
        index <- index + 1
      }
      index <- index - 1
      if(index > maxcount)
      {
        maxcount <- index
      }
      i <- i+index+1
      if((num-i+1) < maxcount)
      {
        break
      }
    }
    return(maxcount)
  }
}

cat(cal(num, obs))

cat(cal(7, c(6,4,10,2,5,7,11)))
