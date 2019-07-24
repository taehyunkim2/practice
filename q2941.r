fp <- file("stdin", "r")
input <- scan(file=fp, what=character(0))
options(scipen = 100)

# input <- "ljes=njak"

each <- strsplit(input, "")[[1]]

count <- 0

count <- count + length(which(each == "-"))

if(length(each) > 1)
{
  i <- 2
  while(i <= length(each))
  {
    if(each[i] == "j" && (each[(i-1)] == "l" || each[(i-1)] == "n"))
    {
      count <- count + 1
    }
    i <- i + 1
  }
}

count <- count + length(which(each == "="))

if(length(each) > 2)
{
  i <- 3
  while(i <= length(each))
  {
    if(each[i] == "=" && (each[(i-1)] == "z" && each[(i-2)] == "d"))
    {
      count <- count + 1
    }
    i <- i + 1
  }
}

cat(length(each) - count)