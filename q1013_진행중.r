options(scipen = 100)
fp <- file("stdin", "r")
n <- scan(file=fp, what=numeric(0), n=1)
location <- scan(file=fp, what=numeric(0), n=1)

n <- 3

status <- 1
map <- matrix(rep(1, n*n), nrow=n)

num <- 1
currow <- curcol <- n%/%2+1
status <- 1
while(num < n*n)
{
  
  if(status == 1)
  {
    if(currow == 1)
    {
      status <- 2
    } else if(map[currow, curcol] != 0)
    
  } else if(status == 2 && curcol == n)
  {
    status <- 3
  } else if(status == 3 && currow == n)
  {
    status <- 4
  }
  
  if(status == 1)
  {
    currow <- currow - 1
  } else if(status == 2)
  {
    curcol <- curcol + 1
  } else if(status == 3)
  {
    currow <- currow + 1
  } else
  {
    curcol <- curcol - 1
  }
    
  num <- num + 1
  map[currow, curcol] = num
  
}