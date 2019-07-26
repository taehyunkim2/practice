options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=3)

# input <- c(1, 1, 20)

a <<- input[1]
b <<- input[2]
cc <<- input[3]

cal <- function(x)
{
  return(a*x+b*sin(x) - cc)
}

x <- 0
y <- cal(x)

while(y < 0)
{
  x <- x + 2
  y <- cal(x)
}

if(cal(x) == 0)
{
  cat(x)
} else
{
  alpha <- x-2
  beta <- x
  dummy <- beta-(beta-alpha)/2
  error <- 10^(-12)
  while((beta-alpha) > error)
  {
    if(cal(dummy) > 0)
    {
      beta <- dummy
      dummy <- beta-(beta-alpha)/2
    } else if(cal(dummy) < 0)
    {
      alpha <- dummy
      dummy <- alpha+(beta-alpha)/2
    } else
    {
      break
    }
  }
  if(dummy %% (10^(-6)))
  {
    cat(format(round(dummy, 6), nsmall = 6))
  } else
  {
    cat(dummy)
  }
}