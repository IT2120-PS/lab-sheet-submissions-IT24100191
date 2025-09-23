setwd('C:\\Users\\Binari Jayasinghe\\Desktop\\IT24100191')

laptop_weights <- read.table('LaptopsWeights.txt', header = TRUE)
View(laptop_weights)

names(laptop_weights) <- c('weight')

attach(laptop_weights)

# 01
popmean <- mean(weight)
popvar <- var(weight)

paste('Population mean: ', popmean)
paste('Population variance: ', popvar)

# 02

samples <- c()
n <- c()

for(i in 1:25) {
  s <- sample(weight, 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('s', i))
}

colnames(samples) = n

s.means <- apply(samples, 2, mean)
s.sd <- apply(samples,2, sd)

# 03

samplemean <- mean(s.means)
samplesd <- sd(s.sd)

popsd <- sqrt(popvar)

paste('Sample mean: ', samplemean)
paste('True mean: ', popmean)

paste('Sample standard deviation: ', samplesd)
paste('True standard deviation: ', popsd)