input <- scan("stdin")
# input <- c(1,1,2,3,4,4,4,5,6,8,0,0)
result <- NA
i <- 0
while(!(input[1] == 0 && input[2] == 0))
{
  i <- i+1
  result[i] <- input[1] + input[2]
  input <- input[-(1:2)]
}
cat(result, sep="\n")