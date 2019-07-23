input <- scan("stdin")
options(scipen = 120)
# input <- 79
if(input < 3)
{
  cat(1)
} else if(input < 79)
{
  p2 <- p1 <- 1
  for(i in 3:input)
  {
    c <- p1 + p2
    p2 <- p1
    p1 <- c
  }
  cat(c)
} else
{
  p2 <- p1 <- 1
  for(i in 3:78)
  {
    c <- p1 + p2
    p2 <- p1
    p1 <- c
  }
  for(i in 79:input)
  {
    p11 <- p1 %/% 100000000
    p12 <- p1 %% 100000000
    p21 <- p2 %/% 100000000
    p22 <- p2 %% 100000000
    p01 <- p11 + p21
    p02 <- p12 + p22
    p01 <- p01 * 100000000
    c <- p01 + p02
    p2 <- p1
    p1 <- c
  }
  cat(c)
}
c+2-1
a <- 8944394323791464 + 8944394323791464
as.numeric(as.character(14472334024676221))
nchar(8944394323791464)
as.double(14472334024676221)
