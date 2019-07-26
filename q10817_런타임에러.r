options(scipen = 100)
fp <- file("stdin", "r")
cat(sort(scan(file=fp, what=numeric(0), n=3))[2])
