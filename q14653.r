options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=3)
msg1 <- scan(file=fp, what=character(0), n=(input[2]*2))
# input <- scan(what=numeric(0), n=3)
# msg1 <- scan(what=character(0), n=(input[2]*2))
num1 <- from1 <- NA
for(i in 1:input[2])
{
  num1[i] <- as.numeric(msg1[(i*2-1)])
  from1[i] <- msg1[(i*2)]
}

people1 <- strsplit("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "")[[1]][1:input[1]]
index1 <- rep(1, input[1])
index1[1] <- 0

for(i in input[3]:input[2])
{
  index1[which(people1 == from1[i])] <- 0
  if(num1[i] == 0)
  {
    index1 <- rep(0, input[1])
  }
}

last1 <- num1[input[3]]
lastindex <- input[3]
while(lastindex != 0 && last1 == num1[lastindex])
{
  index1[which(people1 == from1[lastindex])] <- 0
  lastindex <- lastindex - 1
}

if(sum(index1) == 0)
{
  cat(-1)
} else
{
  cat(people1[which(index1 == 1)])
}