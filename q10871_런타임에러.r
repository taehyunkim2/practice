input <- scan("stdin")
options(scipen = 10000)
x <- input[2]
input <- as.integer(input[-(1:2)])
result <- input[which(input<x)]
cat(result)
