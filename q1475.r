options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=1)

# input <- 69699333

split1 <- as.numeric(strsplit(as.character(input),"")[[1]])
split1[split1 == 6] <- 9
sum1 <- summary(as.factor(split1))
sum1[which(names(sum1) == "9")] <- ceiling(sum1[which(names(sum1) == "9")]/2)
cat(max(sum1))