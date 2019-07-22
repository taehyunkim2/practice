cases <- NA
count <- 0
for(a in 0:9)
{
  for(b in 0:9)
  {
    for(c in 0:9)
    {
      for(d in 0:9)
      {
        for(e in 0:9)
        {
          count <- count+1
          cases[count] <- 10001*a+1001*b+101*c+11*d+2*e
        }
      }
    }
  }
}
result <- rep(1, 10000)
result[unique(cases[which(cases<=10000)])] <- 0
cat(which(result == 1), sep="\n")