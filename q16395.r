options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=2)

# input <- c(30, 3)

mat1 <- matrix(rep(0, input[1]^2), nrow=input[1])
for(i in 1:input[1])
{
  mat1[i, 1] <- 1
  mat1[i, i] <- 1
}
if(input[1] > 2)
{
  for(i in 3:input[1])
  {
    for(j in 2:(i-1))
    {
      mat1[i, j] <- mat1[(i-1), (j-1)] + mat1[(i-1), j]
    }
  }
}
cat(mat1[input[1], input[2]])