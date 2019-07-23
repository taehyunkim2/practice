input <- scan("stdin")
input <- input[-1]
count <- 0
isodd <- function(x)
{
  if(x == 1)
  {
    return(0)
  } else if(x == 2)
  {
    return(1)
  } else
  {
    if(sum(x %% seq(2,(x-1),1) == 0))
    {
      return(0)
    } else
    {
      return(1)
    }
  }
}
for(i in 1:length(input))
{
    count <- count+isodd(input[i])
}
cat(count)