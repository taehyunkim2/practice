input <- scan("stdin")
testcase <- as.numeric(input[1])
input <- input[-1]
row1 <- col1 <- NA
map1 <- list(NA)
for(i in 1:testcase)
{
  row1[i] <- as.numeric(input[1])
  col1[i] <- as.numeric(input[2])
  map1[[i]] <- data.frame(NA)
  count <- 0
  for(j in 1:row1)
  {
    for(k in 1:col1)
    {
      count <- count+1
      if(input[(2+count)] == ".")
      {
        map1[[i]][j, k] <- 1
      } else
      {
        map1[[i]][j, k] <- 0
      }
    }
  }
  input <- input[-(1:(2+count))]
}

result <- NA
for(i in 1:testcase)
{
  evensum <- oddsum <- 0
  for(j in 1:col1[i])
  {
    if(j %% 2 == 0)
    {
      evensum <- evensum + sum(map1[[i]][, j])
    } else
    {
      oddsum <- oddsum + sum(map1[[i]][, j])
    }
  }
  result[i] <- max(evensum, oddsum)
}

cat(result, sep="\n")

input <- c(2,
           2,3,".",".",".",".",".",".",
           2,3,"x",".","x","x","x","x")
