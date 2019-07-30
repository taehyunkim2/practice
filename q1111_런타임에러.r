options(scipen = 100)
fp <- file("stdin", "r")
input <- scan(file=fp, what=numeric(0), n=51)

cal <- function(testcase, cases)
{
  if(testcase < 3)
  {
    return("A")
  } else
  {
    if(cases[1] == cases[2])
    {
      if(sum(cases==cases[1]) == length(testcase))
      {
        return(cases[1])
      } else
      {
        return("B")
      }
    } else
    {
      a <- (cases[3] - cases[2]) / (cases[2] - cases[1])
      b <- cases[2] - cases[1] * a
      if(a == as.integer(a) && b == as.integer(b))
      {
        for(i in 1:(testcase-1))
        {
          if(cases[i]*a+b != cases[i+1])
          {
            return("B")
          }
        }
        return(cases[testcase]*a+b)
      } else
      {
        return("B")
      }
    }
  }
}

testcase <- input[1]
cases <- input[-1]
cat(cal(testcase, cases))