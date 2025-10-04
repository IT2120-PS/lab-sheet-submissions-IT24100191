## 01
# i)
y <- rnorm(25, 45, 2)

# ii)
# Hypothesis => H0: mu >= 46 vs H1: mu < 46
t.test(y, mu=46, alternative = "less")

# since p-value is 0.02687 which is less than 0.05 we can reject the
# H0 at 5% level of significance. Therefore, we can conclude that the true
# average baking time is significantly less than 46 minutes