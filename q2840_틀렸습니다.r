fp <- file("stdin", "r")
input <- scan(file=fp, what=character(0))
options(scipen = 100)

cal <- function(input)
{
  n <- as.numeric(input[1])
  k <- as.numeric(input[2])
  rot <- cha <- rep(NA, k)
  result <- result2 <- rep(NA, n)
  for(i in 1:k)
  {
    rot[i] <- as.numeric(input[(2*i+1)])
    cha[i] <- as.character(input[(2*i+2)])
  }
  
  tot <- 0
  
  for(i in 1:k)
  {
    tot <- tot + rot[i]
    cur <- (tot %% n) + 1
    result[cur] <- cha[i]
  }
  
  if(max(summary(as.factor(na.omit(result)))) > 1)
  {
    return("!")
  }
  
  result[which(is.na(result))] <- "?"
  
  for(i in 1:n)
  {
    result2[i] <- result[cur]
    cur <- cur - 1
    if(cur == 0)
    {
      cur <- n
    }
  }
  
  return(result2)
  
}

# input <- scan(what=character(0))
cat(cal(input), sep="")
