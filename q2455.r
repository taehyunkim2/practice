input <- scan("stdin")
input <- matrix(input, ncol = 2, byrow = T)

people <- 0
peoplecount <- NA
for(i in 1:length(input[, 1]))
{
  people <- people - input[i, 1] + input[i, 2]
  peoplecount[i] <- people
}

cat(max(peoplecount))

input <- c(0, 32, 3, 13, 28, 58, 39, 0)
