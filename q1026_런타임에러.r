input <- scan("stdin")
# input <- c(5,1,1,1,6,0,2,7,8,3,1)
digit <- input[1]
input <- matrix(as.integer(input[-1]), nrow=2, byrow=T)
cat(sum(sort(input[1, ]) * sort(input[2, ], decreasing = T)))