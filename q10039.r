input <- scan("stdin")
input[which(input<40)] <- 40
cat(mean(input))