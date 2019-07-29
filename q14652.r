options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=3)

row1 <- input[3] %/% input[2]
col1 <- input[3] %% input[2]
cat(row1, col1)
