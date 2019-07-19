input <- scan("stdin")
# input <- c(5,55,185,58,183,88,186,60,175,46,155)
testcase <- input[1]
input <- matrix(input[-1], nrow=testcase, byrow=T)
matrix1 <- matrix(rep(0, testcase^2), nrow = testcase)
for(i in 1:testcase)
{
  for(j in 1:testcase)
  {
    if(input[i, 1] > input[j, 1] && input[i, 2] > input[j, 2])
    {
      matrix1[i, j] <- -1
    } else if(input[i, 1] < input[j, 1] && input[i, 2] < input[j, 2])
    {
      matrix1[i, j] <- 1
    }
  }
}
result <- result2 <- NA
for(i in 1:testcase)
{
  result[i] <- sum(matrix1[, i])
}
index <- sort(result, decreasing=T)
for(i in 1:testcase)
{
  for(j in 1:length(index))
  {
    if(result[i] == index[j])
    {
      result2[i] <- j
      break
    }
  }
}