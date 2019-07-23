input <- scan("stdin")
options(scipen = 100)
# input <- c(15000,10000000, floor(runif(15000, 1, 10000000)))
# input <- c(6,9,2,7,4,1,5,3)
n <- input[1]
m <- input[2]
ing <- input[-(1:2)]
count <- 0
i <- 1
l <- length(ing)
while(i<l)
{
  index <- which(ing[(i+1):l] == (m-ing[i]))
  if(length(index) != 0)
  {
    ing <- ing[-(index[1]+i)]
    count <- count+1
  }
  i <- i+1
  l <- length(ing)
}
cat(count)