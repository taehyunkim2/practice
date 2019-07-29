options(scipen = 100)
fp <- file("stdin", "r")
index <- scan(file=fp, what=numeric(0), n=4)
input <- scan(file=fp, what=numeric(0), n=(index[4]*2))
# index <- scan(what=numeric(0), n=4)
# input <- scan(what=numeric(0), n=(index[4]*2))

N <- index[1] + 1
M <- index[2] + 1
L <- index[3] + 1
K <- index[4]
x <- y <- NA
for(i in 1:K)
{
  x[i] <- input[(i*2-1)] + 1
  y[i] <- input[(i*2)] + 1
}

if(L >= N)
{
  N <- L
}
if(L >= M)
{
  M <- L
}

maxcount <- 0
for(i in 1:(M-L+1))
{
  for(j in 1:(N-L+1))
  {
    count <- sum((x >= i & x <= (i+L-1)) & (y >= j & y <= (j+L-1)))
    if(count > maxcount)
    {
      maxcount <- count
    }
  }
}

cat(K-maxcount)