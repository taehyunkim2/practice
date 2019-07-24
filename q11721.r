options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=character(0), n=1)

for(i in 1:((nchar(input) %/% 10)+1))
{
  cat(substr(input, (i*10-9), (i*10)))
  cat("\n")
}