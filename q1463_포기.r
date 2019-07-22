x <- scan("stdin")
options(scipen = 999)
count <- 0
while(x!=1)
{
  if(x %% 3 == 0)
  {
    x <- x %/% 3
    } else if(x %% 2 == 0)
  {
    x <- x %/% 2
  } else
  {
    x <- x - 1
  }
  count <- count + 1
}
cat(count)
x <- 10