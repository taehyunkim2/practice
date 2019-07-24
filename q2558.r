fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0))
options(scipen = 100)

cat(sum(input))