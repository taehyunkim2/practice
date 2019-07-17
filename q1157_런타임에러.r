input <- scan("stdin")
input <- toupper(input)
each <- NA
for(i in 1:nchar(input))
{
  each[i] <- substr(input, i, i)
}
uni <- unique(each)
uni2 <- NA
for(i in 1:length(uni))
{
  uni2[i] <- sum(each == uni[i])
}
if(nchar(input) == uni2[1])
{
  cat(uni)
} else if(max(uni2) == max(uni2[-which.max(uni2)]))
{
  cat("?")
} else
{
  cat(uni[which.max(uni2)])
}

input <- "Z"
