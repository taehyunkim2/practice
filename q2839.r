input <- scan("stdin")
for(n5 in (input%/%5):0)
{
  remainder <- input - n5*5
  if(remainder %% 3 == 0)
  {
    break
  }
}
n3 <- remainder %/% 3
if(n3*3+n5*5 == input)
{
  cat(n3+n5)
} else
{
  cat(-1)
}