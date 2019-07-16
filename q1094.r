x <- scan("stdin")

count <- 0
while(x != 0)
{
  if(x %% 2 == 1)
  {
    count <- count+1
  }
  x <- x %/% 2
}

cat(count)