setwd('C:\\Users\\ASUS\\Downloads\\SLIIT\\MODULES\\Year 2 Semester 1    02.01 P21\\module - PS      (Probability & Statistics) - IT2120\\labs\\answers\\lab 9')
getwd()



# 1. Assume that the time taken to bake a batch of cookies is normally distributed with
#    mean 45 minutes and standard deviation 2 minutes.

# i.  Generate a random sample of size 25 for the baking time.

bake_time <- rnorm(25, mean = 45, sd = 2)


bake_time

mean(bake_time)

sd(bake_time)




# ii. Test whether the average baking time is less than 46 minutes at a 5% level of significance.

#   H0: mu = 46
#   Ha: mu < 46
res <- t.test(bake_time, mu = 46, alternative = "less")
res

res$statistic   # t-value
res$p.value     # p-value
res$conf.int   


