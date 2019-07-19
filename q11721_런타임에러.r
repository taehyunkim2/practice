input <- scan("stdin")
# input <- "OneTwoThreeFourFiveSixSevenEightNineTen"
input <- as.character(input)
digit <- nchar(input)%/%10 + 1
result <- NA
for(i in 1:digit)
{
  result[i] <- substr(input, 1, 10)
  input <- substr(input, 11, nchar(input))
}
cat(result, sep="\n")