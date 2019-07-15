# I want to know how to scan
x <- scan("stdin")
testcase <- x[1]
input <- matrix(x[-1], nrow=3, byrow=T)

# hard coding
testcase <- 3
input <- matrix(c(0, 0, 13, 40, 0, 37, 0, 0, 3, 0, 7, 4, 1, 1, 1, 1, 1, 5), nrow=3, byrow=T)

# error check
if(sum(as.integer(input) == input) != length(input))
{
  print("integer error!")
} else if(sum(cbind(input[, 1], input[, 2], input[, 4], input[, 5]) > 10000 | cbind(input[, 1], input[, 2], input[, 4], input[, 5]) < -10000))
{
  print("x, y bound error!")
} else if(sum(cbind(input[, 3], input[, 6]) > 10000 | cbind(input[, 3], input[, 6]) < 1))
{
  print("range bound error!")
}

# calculating function
locations <- function(input)
{
  # 동심원의 경우
  center_distance <- sqrt((input[1]-input[4])^2 + (input[2]-input[5])^2)
  if(center_distance == 0 && input[3] == input[6])
  {
    return(-1) # 완전겹침
  } else if(center_distance == 0 && input[3] != input[6])
  {
    return(0)
  }
  # 중심 다르고 range합 짧을때
  range_length <- input[3]+input[6]
  if(range_length < center_distance)
  {
    return(0) # 멀어서 못만남
  } else if(range_length == center_distance)
  {
    return(1) # 한 점에서 만남
  }
  # 중심 다르고 같은크기 원
  if(input[3] == input[6])
  {
    return(2) # 두 점에서 만남
  }
  # 중심 다르고 다른크기 원
  
}

# body
for(i in 1:testcase)
{
  locations(input[i])
}