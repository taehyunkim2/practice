origin <- scan("stdin")
if(origin < 10)
{
  origin <- origin*10
}
current <- origin
count <- 0
while(1)
{
  current <- (current %% 10)*10 + (((current %% 10) + (current %/% 10)) %% 10)
  count <- count+1
  if(origin == current)
  {
    break
  }
}
cat(count