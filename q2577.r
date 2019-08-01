options(scipen = 100)
fp <- file("stdin", "r")
obs <- scan(file=fp, what=numeric(0), n=3)

result <- summary(as.factor((strsplit(as.character(obs[1] * obs[2] * obs[3]), "")[[1]])))

count <- rep(0, 10)
count[(as.numeric(names(result))+1)] <- result

cat(count, sep="\n")