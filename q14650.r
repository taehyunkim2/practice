options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=1)

if(input == 1)
{
  result <- 0
} else
{
  result <- (3^(input-2))*2
}

cat(result)