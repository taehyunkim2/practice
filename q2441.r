input <- scan("stdin")
for(i in input:1)
{
  cat(rep(" ",(input-i)), sep="")
  cat(rep("*", i), sep="")
  cat("\n")
}