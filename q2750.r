options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=1)
cat(sort(scan(file=fp, what=numeric(0), n=input)), sep="\n")