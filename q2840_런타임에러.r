input <- scan("stdin")
input <- as.character(input)
n <- as.numeric(input[1])
k <- as.numeric(input[2])
rot <- cha <- rep(NA, k)
result <- result2 <- rep(NA, n)
for(i in 1:k)
{
  rot[i] <- as.numeric(input[(2+2*i-1)])
  cha[i] <- as.character(input[(2+2*i)])
}
tot <- 0
for(i in 1:n)
{
  tot <- tot + rot[i]
  cur <- (tot %% n) + 1
  result[cur] <- cha[i]
}
result[is.na(result)] <- "?"
for(i in 1:n)
{
  result2[i] <- result[cur]
  cur <- cur - 1
  if(cur == 0)
  {
    cur <- n
  }
}
cat(result2, sep="")
