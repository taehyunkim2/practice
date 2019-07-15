input <- scan("stdin")
input <- as.numeric(input)
testcase <- input[1]
input <- matrix(input[-1], nrow=testcase, byrow=T)
distance <- input[,2]-input[,1]

move <- function(distance)
{
  i <- count <- 0
  while(distance > i)
  {
    count <- count + 1
    i <- i + count*2
  }
  if(distance > (i-count))
  {
    return(count*2)
  } else
  {
    return(count*2-1)
  }
}

result <- NA
for(i in 1:testcase)
{
  result[i] <- move(distance[i])
}

cat(result, sep="\n")