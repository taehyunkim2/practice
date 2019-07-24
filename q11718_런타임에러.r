fp <- file("stdin", "r")
input <- scan(file=fp, what=character(0), sep="\n", n=100)
cat(input, sep="\n")