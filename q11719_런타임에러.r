fp <- file("stdin", "r")
for(i in 1:100)
{
  cat(readLines(con=fp, n=1), sep="\n")
}