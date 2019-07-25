options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=1)
cat(paste0(seq(input, 1, -1), "\n", collapse = ""))