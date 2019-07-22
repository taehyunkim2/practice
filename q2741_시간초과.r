input <- scan("stdin")
system.time(
  cat(seq(1,input,1), sep="\n")
)

y <- length(input)
y <- seq(1, input, 1)
for(i in 1:input)
{
  cat(i, "\n")
}
sprintf("%s", input)
input <- 100000
result <- "1"
if(input > 1)
{
  for(i in 2:input)
  {
    result <- paste0(result, "\n", i) 
  }
}
cat(result)

