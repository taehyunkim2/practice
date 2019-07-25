options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=1)

input <- 1000-input
count <- 0
obs <- c(500, 100, 50, 10, 5, 1)
for(i in 1:length(obs))
{
  count <- count + input %/% obs[i]
  input <- input %% obs[i]
}
cat(count)