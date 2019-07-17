input <- scan("stdin")
testcase <- as.numeric(input[1])
input <- matrix(as.numeric(input[-1]), nrow=testcase, byrow=T)
count <- 0
result <- NA
for(i in 1:testcase)
{
  for(c in 0:input[i,3])
  {
    count <- count+1
    result[count] <- input[i, 1] * ( input[i, 2]^c )
  }
}
cat(length(unique(result)),"\n")

input <- c(3,2,5,3,8,9,1,3,5,3)
input <- c(3,4,4,3,8,2,3,5,5,4)