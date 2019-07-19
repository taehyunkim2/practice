input <- scan("stdin")
# input <- c(472, 385)
d1 <- input[2] %/% 100
d2 <- input[2] %/% 10 - (d1*10)
d3 <- input[2] - d1*100 - d2*10
result <- NA
result[1] <- input[1]*d3
result[2] <- input[1]*d2
result[3] <- input[1]*d1
result[4] <- result[1]+result[2]*10+result[3]*100
cat(result, sep="\n")