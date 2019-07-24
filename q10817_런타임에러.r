fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0))
options(scipen = 100)

cal <- function(input)
{
  return(max(input[-which.max(input)]))
}

cat(cal(input))

input <- scan(what=numeric(0))
