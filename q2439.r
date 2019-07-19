input <- scan("stdin")
for(i in 1:input)
{
  cat(rep(" ", input-i), sep="")
  cat(rep("*", i), sep="")
  cat("\n")
}