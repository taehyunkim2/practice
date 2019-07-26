options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=1)
obs <- scan(file=fp, what=numeric(0), n=(input*2))

index <- rep(0, input)

cur <- max1 <- 0
for(i in 1:(input*2))
{
  if(index[obs[i]] == 0)
  {
    cur <- cur + 1
    index[obs[i]] <- 1
  } else
  {
    cur <- cur - 1
  }
  if(cur > max1)
  {
    max1 <- cur
  }
}

cat(max1)