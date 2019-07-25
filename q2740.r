options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=2000000)

# input <- scan(what=numeric(0), n=2000000)

index1 <- input[1:2]
mat1 <- matrix(input[3:(2+index1[1]*index1[2])], nrow=index1[1], byrow=T)
index2 <- input[(3+index1[1]*index1[2]):(4+index1[1]*index1[2])]
mat2 <- matrix(input[(5+index1[1]*index1[2]):length(input)], nrow=index2[1], byrow=T)
result <- t(mat1 %*% mat2)
result2 <- NA
for(i in 1:index1[1])
{
  result2[i] <- paste0(result[, i], collapse = " ")
}
cat(result2, sep="\n")