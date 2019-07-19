input <- scan("stdin")
testcase <- input[1]
input <- matrix(input[-1], nrow=testcase, byrow=T)
result <- input[, 1] + input[, 2]
cat(result, sep="\n")