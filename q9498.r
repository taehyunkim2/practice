x <- scan("stdin")
y <- as.numeric(x[1])
if(y >= 90)
{
  cat("A")
} else if(y >= 80 && y < 90)
{
  cat("B")
} else if(y >= 70 && y < 80)
{
  cat("C")
} else if(y >= 60 && y < 70)
{
  cat("D")
} else
{
  cat("F")
}