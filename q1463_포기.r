options(scipen = 100)
fp <- file("stdin", "r")
x <- scan(file=fp, what=numeric(0), n=1)

cal <- function(x)
{
  count <- 0
  while(x != 1)
  {
    if(x %% 3 == 0)
    {
      x <- x / 3
    } else if(x %% 2 == 0)
    {
      if( (x-1) %% 3 == 0)
      {
        x <- x - 1
      } else
      {
        x <- x / 2
      }
    } else
    {
      x <- x - 1
    }
    count <- count + 1
  }
  return(count)
}

dab <- cal(x)
cat(dab)

result <- NA
for(i in 1:100)
{
  result[i] <- cal(i)
}
result
cal(453421)
