input <- scan("stdin")
result <- NA
i <- 0
while(length(input) != 0)
{
  i <- i+1
  result[i] <- input[1] + input[2]
  input <- input[-(1:2)]
}
cat(result, sep="\n")