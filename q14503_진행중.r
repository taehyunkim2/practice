input <- scan("stdin")
height <- input[1]
width <- input[2]
current <- input[3:4]
direction <- input[5]
home <- matrix(input[-(1:5)], nrow = width, byrow = T)

go <- function(current, direction)
{
  if(direction == 0)
  {
    current[1] <- current[1] - 1
    current
  }
}
input <- matrix(input, ncol = 2, byrow = T)
dim1 <- input[1, 1]
fri1 <- input[1, 2]
input <- input[-1, ]
