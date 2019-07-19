input <- scan("stdin")
# input <- "Teullinika Teullyeotzi "
count <- 0
length1 <- as.integer(nchar(input))
for(i in 1:length1)
{
  if(substr(input, i, i) == " ")
  {
    count <- count + 1
  }
}
if(substr(input, 1, 1) == " ")
{
  count <- count-1
}
if(substr(input, length1, length1) == " ")
{
  count <- count-1
}
cat(count+1)