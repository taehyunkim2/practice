input <- scan("stdin")
input <- as.integer(input)
options(digits=20)
cat(max(input[-which.max(input)]))

input <- c(20, 30, 10)
max1 <- max2 <- 0
for(i in 1:length(input))
{
  if(input[i] > max1)
  {
    max1 <- input[i]
  }
  if(input[i] < max1 && input[i] > max2)
  {
    max2 <- input[i]
  }
}
cat(max2)
input <- c(1,1,1)
