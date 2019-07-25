options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=(2*scan(file=fp, what=numeric(0), n=1)))
cat(input[seq(2, length(input), 2)]-input[seq(1, length(input), 2)]+2, sep="\n")