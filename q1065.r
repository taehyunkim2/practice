fp=file("stdin", "r")
input=scan(file=fp, what=integer(0), n=1)

options(scipen = 100)

cal <- function(input)
{
  count <- 0
  for(i in 1:input)
  {
    dummy <- as.numeric(strsplit(as.character(i),"")[[1]])
    if(length(dummy) < 3)
    {
      count <- count+1
    } else if(dummy[2]-dummy[1] == dummy[3]-dummy[2])
    {
      count <- count+1
    }
  }
  return(count)
}

cat(cal(input))