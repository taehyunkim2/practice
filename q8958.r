options(scipen = 100)
fp <- file("stdin", "r")
testcase <- scan(file=fp, what=numeric(0), n=1)
obs <- scan(file=fp, what=character(0), n=testcase)

sobs <- strsplit(obs, "")

result <- NA
for(i in 1:testcase)
{
  count <- cur <- 0
  for(j in 1:length(sobs[[i]]))
  {
    if(sobs[[i]][j] == "O")
    {
      cur <- cur + 1
      count <- count + cur
    } else
    {
      cur <- 0
    }
    result[i] <- count
  }
}

cat(result, sep="\n")