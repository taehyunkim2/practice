input <- scan("stdin")
# input <- c(2,4,4,10,1,100,10,1,2,1,3,2,4,3,4,4,8,8,10,20,1,5,8,7,1,43,1,2,1,3,2,4,2,5,3,6,5,7,6,7,7,8,7)
input <- as.numeric(input)
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
  rule1[[i]] <- input[3:(2+input[1])]
  rule2[[i]] <- matrix(input[(3+input[1]):(2+input[1]+input[2]*2)], nrow=input[2], byrow=T)
  win[i] <- input[(3+input[1]+input[2]*2)]
  input <- input[-(1:(3+input[1]+input[2]*2))]
}

# 시간 계산 함수
build <- function(rule1, rule2, win)
{
  flag <- rep(0, length(rule1))
  flag[win] <- 1
  for(i in win:1)
  {
    if(flag[i] == 1)
    {
      for(j in 1:length(rule1))
      {
        if(rule2[j, 2] == i)
        {
          flag[rule2[j, 1]] <- 1
        }
      }
    }
  }
  return(sum(rule1 * flag))
}

build2 <- function(rule1, rule2, win)
{
  flag <- list(rep(0, length(rule1)))
  count <- 1
  flag[[count]][win] <- 1
  for(i in win:1)
  {
    count <- currentcount
    for(j in 1:count)
    {
      if(flag[[j]][i] == 1)
      {
        for(k in 1:length(rule2[, 1]))
        {
          if(rule2[k, 2] == win)
          {
            currentcount <- count+1
            flag[[currentcount]] <- flag[[j]]
            flag[[currentcount]][rule2[k, 1]] <- 1
          }
        }
      }
    }
  }
  return()
}

build(rule1[[2]], rule2[[2]], win[2])
rule1 <- rule1[[1]]
rule2 <- rule2[[1]]
win <- 4