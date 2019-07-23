input <- scan("stdin")
a <- format(as.Date(paste0(2007, "-", input[1], "-", input[2]),format="%Y-%m-%d"), format="%u")
if(a == 1)
{
  cat("MON")
} else if(a == 2)
{
  cat("TUE")
} else if(a == 3)
{
  cat("WED")
} else if(a == 4)
{
  cat("THU")
} else if(a == 5)
{
  cat("FRI")
} else if(a == 6)
{
  cat("SAT")
} else
{
  cat("SUN")
}