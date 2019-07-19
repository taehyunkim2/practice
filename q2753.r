input <- scan("stdin")
input2 <- as.numeric(input)
options(digits=10)
if(input2 %% 400 == 0)
{
  cat(1)
} else if(input2 %% 4 == 0 && input2 %% 100 != 0)
{
  cat(1)
} else
{
  cat(0)
}