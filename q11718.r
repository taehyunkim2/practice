options(scipen = 100)
fp <- file("stdin", "r")
cat(scan(file=fp, what=character(0), sep="\n", n=100))