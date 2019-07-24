options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=2000001)

testcase <- input[1]*2
input <- input[-1]

cat(input[seq(1, testcase-1, 2)] + input[seq(2, testcase, 2)], sep="\n")