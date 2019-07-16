input <- scan("stdin")

input <- matrix(input, ncol = 2, byrow = T)
dim1 <- input[1, 1]
fri1 <- input[1, 2]
input <- input[-1, ]

if(dim1 == 1)
{
  cat(0)
} else if(dim1 == 2 && fri1 == 0)
{
  cat(c(1, 1), sep="\n")
} else if(dim1 == 2 && fri1 == 1)
{
  cat(0)
} else
{
  fb1 <- matrix(rep(0, dim1^2), nrow=dim1)
  for(i in 1:fri1)
  {
    fb1[input[i, 1], input[i, 2]] <- 1
    fb1[input[i, 2], input[i, 1]] <- 1
  }
  for(i in 1:dim1)
  {
    fb1[i, i] <- 1
  }
  fb2 <- fb1
  round <- 0
  count <- NA
  while(sum(fb1) != dim1^2 )
  {
    for(i in 1:dim1)
    {
      for(j in 1:dim1)
      {
        for(k in 1:dim1)          
        {
          if((fb1[i, j] == 1 && fb1[j, k] == 1) && fb1[i, k] == 0)
          {
            fb2[i, k] <- 1
          }
        }
      }
    }
    round <- round + 1
    count[round] <- (sum(fb2)-sum(fb1))/2 
    fb1 <- fb2
  }
}
cat(round, count, sep="\n")
