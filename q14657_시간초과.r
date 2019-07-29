options(scipen = 100)
fp <- file("stdin", "r")

dim1 <- scan(file=fp, what=numeric(0), n=2)
input <- scan(file=fp, what=numeric(0), n=((dim1[1]-1)*3))
# dim1 <- scan(what=numeric(0), n=2)
# input <- scan(what=numeric(0), n=((dim1[1]-1)*3))

mat1 <- matrix(input, ncol=3, byrow=T)

result <- list(NA)
resultindex <- 1
maxcount <- 0
for(n in 1:dim1[1])
{
  deep <- list(n)
  dummy <- list(NA)
  dummyindex <- 0
  while(dummyindex != 1)
  {
    dummy <- list(0)
    dummyindex <- 1
    for(i in 1:length(deep))
    {
      cur <- setdiff(c(mat1[which(mat1[, 1] == deep[[i]][length(deep[[i]])]), 2], mat1[which(mat1[, 2] == deep[[i]][length(deep[[i]])]), 1]), deep[[i]])
      if(length(cur) > 0)
      {
        for(treeindex in cur)
        {
          dummy[[dummyindex]] <- c(deep[[i]], treeindex)
          dummyindex <- dummyindex + 1
        }
      } else
      {
        if(length(deep[[i]]) > maxcount)
        {
          maxcount <- length(deep[[i]])
          result <- list(NA)
          result[[1]] <- deep[[i]]
          resultindex <- 2
        } else if(length(deep[[i]]) >= maxcount)
        {
          result[[resultindex]] <- deep[[i]]
          resultindex <- resultindex + 1
        }
        
      }
    }
    deep <- dummy
  }
}

mincount <- 1000*100000
for(i in 1:length(result))
{
  route <- result[[i]]
  count <- 0
  for(j in 1:(length(route)-1))
  {
    if(sum(which(mat1[, 1] == route[j] & mat1[, 2] == route[(j+1)])))
    {
      count <- count + mat1[which(mat1[, 1] == route[j] & mat1[, 2] == route[(j+1)]), 3]
    } else
    {
      count <- count + mat1[which(mat1[, 2] == route[j] & mat1[, 1] == route[(j+1)]), 3]
    }
  }
  if(count < mincount)
  {
    mincount <- count
  }
}

cat(mincount %/% dim1[2] + (mincount %% dim1[2] > 0))