options(scipen = 100)
fp <- file("stdin", "r")

index <- scan(file=fp, what=numeric(0), n=4)
N <- index[1]
M <- index[2]
K <- index[3]
Q <- index[4]
key <- scan(file=fp, what=numeric(0), n=M)
grow <- scan(file=fp, what=numeric(0), n=K)
com <- scan(file=fp, what=numeric(0), n=(Q*3))

kidkey <- rep(0, N)
result <- NA
for(i in 1:K)
{
  kidkey[grow[i]] <- kidkey[grow[i]] + 1
  count <- 0
  for(j in 1:Q)
  {
    if(kidkey[com[(j*3-2)]]+kidkey[com[(j*3-1)]] >= key[com[(j*3)]])
    {
      count <- count + 1
    }
  }
  result[i] <- count
}

cat(result, sep="\n")

index <- c(5, 3, 4, 4)
key <- c(4, 3, 1)
grow <- c(2, 2, 5, 1)
com <- c(1, 2, 2, 1, 2, 1, 1, 5, 2, 3, 5, 3)