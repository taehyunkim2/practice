options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=2000000)

result <- rep(NA, 5)
result[1] <- input[1] + input[2]
result[2] <- input[1] - input[2]
result[3] <- input[1] * input[2]
result[4] <- input[1] %/% input[2]
result[5] <- input[1] %% input[2]

cat(result, sep="\n")