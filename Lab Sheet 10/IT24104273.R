setwd("C:\\Users\\ASUS\\Downloads\\SLIIT\\MODULES\\Year 2 Semester 1    02.01 P21\\module - PS      (Probability & Statistics) - IT2120\\labs\\answers\\lab 10")
getwd()


# Exercise
snack_observed <- c(120, 95, 85, 100)
snack_prob <- c(0.25, 0.25, 0.25, 0.25)
snack_chisq <- chisq.test(x = snack_observed, p = snack_prob)
print(snack_chisq)

# Conclusion: Since p-value > 0.05, we do not reject H0.
# No evidence against equal preference for snack types
