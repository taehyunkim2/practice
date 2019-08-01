options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=character(0), n=1)

sinput <- strsplit(input, "")[[1]]
alphabet <- strsplit("abcdefghijklmnopqrstuvwxyz", "")[[1]]
aindex <- rep(-1, length(alphabet))

for(i in 1:length(alphabet))
{
  if(sum(which(alphabet[i] == sinput)))
  {
    aindex[i] <- which(alphabet[i] == sinput)[1] - 1
  }
}

cat(aindex)