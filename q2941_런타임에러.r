input <- scan("stdin")
cro_length <- nchar(input)

count <- 0
for(i in 1:cro_length)
{
  if(substr(input, i, i+1) == "lj" || substr(input, i, i+1) == "nj")
  {
    count <- count + 1
  } else if(substr(input, i, i) == "=" || substr(input, i, i) == "-")
  {
    count <- count + 1
    if(substr(input, (i-2), i) == "dz=")
    {
      count <- count + 1
    }
  }
}
cat(cro_length-count)
