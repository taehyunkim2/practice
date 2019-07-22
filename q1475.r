input <- scan("stdin")

input <- 6969333
options(scipen = 100)
split1 <- as.numeric(strsplit(as.character(input),"")[[1]])
split1[split1 == 6] <- 9
cat(as.numeric(which.max(summary(as.factor(split1)))))
