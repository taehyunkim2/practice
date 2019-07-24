fp=file("stdin", "r")
input=scan(file=fp, what=numeric(0))
options(scipen = 100)

digit <- input[1]
input <- matrix(as.integer(input[-1]), nrow=2, byrow=T)
cat(sum(sort(input[1, ]) * sort(input[2, ], decreasing = T)))