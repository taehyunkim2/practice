fp=file("stdin", "r")
input=scan(file=fp, what=character(0))
options(scipen = 100)

input <- toupper(input)
each <- strsplit(input, "")[[1]]
sum1 <- sort(summary(as.factor(each)),decreasing = T)
if(length(sum1) == 1)
{
  cat(names(sum1[1]))
} else if(sum1[1] == sum1[2])
{
  cat("?")
} else
{
  cat(names(sum1[1]))
}