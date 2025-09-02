setwd('C:\\Users\\Binari Jayasinghe\\Desktop')

## Question 01
# Part 1
# This is a Binomial distribution
# Here, random variable X has binomial distribution with n=50 and p=0.85

# Part 2
# Here, it is asking to find P(X>=47)
# Which is equal to 1 - P(X<47) = 1 - P(x<=46)
1 - pbinom(46,50,0.85,lower.tail = TRUE)

## Question 02
# Part 1
# The random variable X is the number of calls recieved per hour

# Part 2
# This is a Poisson distribution with lambda = 12

# Part 3
# Here, it is asking to find the P(X=15)
dpois(15,12)
