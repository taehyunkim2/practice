input <- scan("stdin")
# input <- c("5", "54321")
input2 <- as.numeric(input[2])
result <- 0
while(input2 != 0)
{
  result <- result + input2 %% 10
  input2 <- input2 %/% 10
}
cat(result)