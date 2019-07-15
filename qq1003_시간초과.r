input <- scan("stdin")
input <- as.numeric(input)
testcase <- input[1]
input <- input[-1]

count_1 <<- 0
count_0 <<- 0

fibonacci <- function(x)
{
  if(x == 1)
  {
    count_1 <<- count_1 + 1
    return()
  } else if(x == 0)
  {
    count_0 <<- count_0 + 1
    return()
  }
  fibonacci(x-1)
  fibonacci(x-2)
  return()
}

result <- NA
for(i in 1:testcase)
{
  fibonacci(input[i])
  result[i] <- paste0(count_0, " ", count_1)
  count_1 <<- 0
  count_0 <<- 0
}

cat(result, sep="\n")
