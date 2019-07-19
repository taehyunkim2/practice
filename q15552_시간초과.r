input <- scan("stdin")
input <- as.integer(input)
testcase <- input[1]
input <- input[-1]
for(i in 1:testcase)
{
  cat(input[(i*2-1)]+input[(i*2)])
  cat("\n")
}