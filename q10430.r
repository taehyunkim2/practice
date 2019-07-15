input <- scan("stdin")
x <- as.numeric(input)
cat(paste0((x[1]+x[2])%%x[3],"\n",
           (x[1]%%x[3]+x[2]%%x[3])%%x[3],"\n",
           (x[1]*x[2])%%x[3],"\n",
           (x[1]%%x[3] * x[2]%%x[3])%%x[3]))