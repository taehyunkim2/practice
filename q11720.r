options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=character(0), n=2)

cat(sum(as.numeric(strsplit(input[2],"")[[1]])))