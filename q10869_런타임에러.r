input <- scan("stdin")
options(digits=10)
result <- NA
result[1] <- input[1] + input[2]
result[2] <- input[1] - input[2]
result[3] <- input[1] * input[2]
result[4] <- input[1] %/% input[2]
result[5] <- input[1] %% input[2]
cat(result, sep="\n")