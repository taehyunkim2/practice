input <- scan("stdin")
input <- as.numeric(input)
cat(paste0(input, " * ", seq(1, 9, 1), " = ", input*seq(1, 9, 1)), sep="\n")