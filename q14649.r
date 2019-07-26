options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=character(0), n=202)

# input <- scan(what=character(0), n=202)

cal <- function(input)
{
  don <- as.numeric(input[1])
  input <- input[-1]
  sec <- as.numeric(input[1])
  input <- input[-1]
  
  if(sec > 0)
  {
    obs <- aim <- NA
    for(i in 1:sec)
    {
      obs[i] <- as.numeric(input[(i*2-1)])
      aim[i] <- input[(i*2)]
    }
  }
  
  index <- rep(0, 100)
  i <- 0
  while(i < sec)
  {
    i <- i + 1
    if(aim[i] == "R" && obs[i] < 100)
    {
      index[seq((obs[i]+1), 100, 1)] <- index[seq((obs[i]+1), 100, 1)] + 1
    } else if(aim[i] == "L" && obs[i] > 1)
    {
      index[seq((obs[i]-1), 1, -1)] <- index[seq((obs[i]-1), 1, -1)] + 1
    }
  }
  index <- index %% 3
  
  result <- c(sum(index == 0), sum(index == 1), sum(index == 2))/100*don
  result <- round(result, 2)
  return(result)
}

result <- cal(input)
for(i in 1:3)
{
  cat(format(result[i], nsmall = 2), sep="\n")
}
cat(format(result, nsmall = 2), sep="\n")