options(scipen = 100)
fp <- file("stdin", "r")

# input <- c(55,185,58,183,88,186,60,175,46,155)
testcase <- scan(file=fp, what=numeric(0), n=1)
input <- scan(file=fp, what=numeric(0), n=(testcase*2))
input <- matrix(input, nrow=testcase, byrow=T)

matrix1 <- matrix(rep(0, testcase^2), nrow = testcase)
for(i in 1:testcase)
{
  for(j in 1:testcase)
  {
    if(input[i, 1] < input[j, 1] && input[i, 2] < input[j, 2])
    {
      matrix1[i, j] <- 1
    }
  }
}

result <- NA
for(i in 1:testcase)
{
  result[i] <- sum(matrix1[i, ]) + 1
}

cat(result)