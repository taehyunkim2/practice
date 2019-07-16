input <- scan("stdin")
testcase <- input[1]
input <- input[-1]
rule1 <- list(NA)
rule2 <- list(NA)
win <- NA

# 입력 분류
for(i in 1:testcase)
{
  count1 <- input[1]
  count2 <- input[2]
  rule1[[i]] <- input[3:(2+count1)]
  rule2[[i]] <- matrix(input[(3+count1):(2+count1+count2*2)], nrow=input[2], byrow=T)
  win[i] <- input[(3+count1+count2*2)]
  input <- input[-(1:(3+count1+count2*2))]
}

build2 <- function(rule1, rule2, win)
{
  flag <- list(rep(0, length(rule1)))
  flagnumbers <- dummy <- 1
  flag[[1]][win] <- 1
  while(win > 1)
  {
    flagnumbers <- dummy
    for(j in 1:flagnumbers)
    {
      if(flag[[j]][win] == 1)
      {
        for(k in 1:length(rule2[, 1]))
        {
          if(rule2[k, 2] == win)
          {
            dummy <- dummy + 1
            flag[[dummy]] <- flag[[j]]
            flag[[dummy]][rule2[k, 1]] <- 1
          }
        }
      }
    }
    win <- win - 1
  }
  dummy <- NA
  for(i in 1:length(flag))
  {
    dummy[i] <- sum(flag[[i]] * rule1)
  }
  return(max(dummy))
}
for(i in  1:testcase)
{
  win[i] <- build2(rule1[[i]], rule2[[i]], win[i])
}
cat(win, sep="\n")