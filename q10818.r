fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=2000000)
options(scipen = 100)

testcase <- input[1]
obs <- input[-1]
cat(min(obs), max(obs))

max(-1000000, 1000000)
