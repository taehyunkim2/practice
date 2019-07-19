input <- scan("stdin")
# input <- c(5, 1, 1, 2, 3, 3, 4, 9, 8, 5, 2)
testcase <- input[1]
input <- matrix(input[-1], nrow = testcase, byrow = T)
numbers <- NA
result <- NA
for(i in 1:testcase)
{
  numbers[i] <- i
  result[i] <- input[i, 1] + input[i, 2]
}
cat(paste0("Case #", numbers, ": ", input[, 1], " + ", input[, 2], " = ", result), sep="\n")
