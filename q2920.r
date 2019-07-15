input <- scan("stdin")
x <- as.numeric(input)
if(!sum(x != c(1,2,3,4,5,6,7,8)))
{
  cat("ascending")
} else if(!sum(x != c(8,7,6,5,4,3,2,1)))
{
  cat("descending")
} else
{
  cat("mixed")
}
