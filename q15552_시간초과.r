options(scipen = 100)
testcase <- scan(file=fp, what=numeric(0), n=1)
for(i in 1:testcase)
{
  cat(scan(file=fp, what=numeric(0), n=2), "\n")
}