options(scipen = 100)
fp <- file("stdin", "r")
testcase <- scan(file=fp, what=numeric(0), n=1)
input <- scan(file=fp, what=character(0), n=(testcase*2))

obs <- cha <- NA
for(i in 1:testcase)
{
  obs[i] <- as.numeric(input[(2*i-1)])
  cha[i] <- input[(2*i)]
}

scha <- strsplit(cha, "")

for(i in 1:testcase)
{
  for(j in 1:length(scha[[i]]))
  {
    cat(rep(scha[[i]][j], obs[i]), sep="")
  }
  cat("\n")
}