input <- scan("stdin")
sp <- as.character(input)
count <- sum(sp == " ") + 1
if(sp[1] == " ")
{
  count <- count - 1
}
if(sp[length(sp)] == " ")
{
  count <- count - 1
}
cat(count)