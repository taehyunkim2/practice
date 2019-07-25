fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=9)

# input <- c(20,7,23,19,10,15,25,8,13)

input <- sort(input)
two <- 9
one <- 8
result <- sum(input[-c(one, two)])
while(result != 100)
{
  if(one > 1)
  {
    one <- one - 1
    result <- sum(input[-c(one, two)])
  } else
  {
    two <- two - 1
    one <- two - 1
    result <- sum(input[-c(one, two)])
  }
}

cat(input[-c(one, two)], sep="\n")