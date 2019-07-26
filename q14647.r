options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=2000000)

# input <- scan(what=numeric(0), n=2000000)

index <- input[1:2]
input <- input[-(1:2)]
mat1 <- matrix(input, nrow=index[1], byrow=T)
mat9 <- strsplit(as.character(mat1), "")
for(i in 1:length(mat1))
{
  mat1[i] <- sum(mat9[[i]] == "9")
}
max9 <- sum(mat1)

maxi9 <-  maxj9 <- 0
for(i in 1:index[1])
{
  cur9 <- sum(mat1[i, ])
  if(cur9 > maxi9)
  {
    maxi9 <- cur9
  }
}
for(j in 1:index[2])
{
  cur9 <- sum(mat1[, j])
  if(cur9 > maxj9)
  {
    maxj9 <- cur9
  }
}

if(maxi9 > maxj9)
{
  result <- max9-maxi9
} else
{
  result <- max9-maxj9
}

cat(result)