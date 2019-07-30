options(scipen = 100)
fp <- file("stdin", "r")
testcase <- scan(file=fp, what=numeric(0), n=1)
obs <- scan(file=fp, what=numeric(0), n=(testcase*2))

obs[which(obs == 0)] <- 64
table7 <- c(5000000, rep(3000000, 2), rep(2000000, 3), rep(500000, 4), rep(300000, 5), rep(100000, 6), rep(0, 79))
table8 <- c(5120000, rep(2560000, 2), rep(1280000, 4), rep(640000, 8), rep(320000, 16), rep(0, 33))

for(j in 1:testcase)
{
  cat(table7[obs[(j*2-1)]] + table8[obs[(j*2)]], "\n")
}
