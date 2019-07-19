input <- scan("stdin")
if(input[1] > input[2])
{
  cat(">")
} else if(input[1] < input[2])
{
  cat("<")
} else
{
  cat("==")
}