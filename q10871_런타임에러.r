options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=2000000)

n <- input[1]
x <- input[2]
obs <- input[-(1:2)]
cat(obs[which(obs < x)])

# 55% 런타임에러