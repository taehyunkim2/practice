options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=2000000)

# input <- scan(what=numeric(0), n=2000000)

index <- input[1:2]
input <- input[-(1:2)]
obs <- input[1:index[1]]
input <- input[-(1:index[1])]

query <- list(NA)
type <- NA
i <- 0
while(length(input) != 0)
{
  i <- i+1
  if(input[1] == 1)
  {
    type[i] <- 1
    query[[i]] <- input[2:3]
    input <- input[-(1:3)]
  } else
  {
    type[i] <- 2
    query[[i]] <- input[2:5]
    input <- input[-(1:5)]
  }
}

result <- NA
for(i in 1:index[2])
{
  if(type[i] == 1)
  {
    result[i] <- sum(obs[query[[i]][1]:query[[i]][2]])
    dummy <- obs[query[[i]][2]]
    obs[query[[i]][2]] <- obs[query[[i]][1]]
    obs[query[[i]][1]] <- dummy
  } else
  {
    result[i] <- sum(obs[query[[i]][1]:query[[i]][2]]) - sum(obs[query[[i]][3]:query[[i]][4]])
  }
}
cat(result, sep="\n")