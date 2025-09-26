setwd("C:\\Users\\it24104273\\Desktop\\IT24104273")
getwd()

# import the dataset
data <- read.table("Exercise - LaptopsWeights.txt" , header = TRUE)
fix(data)
attach(data)


# 1. Calculate the population mean and population standard deviation of the laptop bag weights.
N <- length(Weight.kg.)

popmn <- mean(Weight.kg.)
sampsd <- sd(Weight.kg.)
popsd  <- sampsd * sqrt((N - 1) / N)


# print population mean & population SD
popmn
popsd



# 2. Draw 25 random samples of size 6 (with replacement) and calculate the sample mean
#   and sample standard deviation for each sample.

set.seed(2025)   # reproducible


# Build samples using your loop + cbind pattern
samples <- c()
nms <- c()
for(i in 1:25){
  s <- sample(Weight, 6, replace = TRUE)
  samples <- cbind(samples, s)
  nms <- c(nms, paste('S', i, sep = ''))
}
colnames(samples) <- nms

# Per-sample means and (sample) standard deviations
s.means <- apply(samples, 2, mean)
s.sds   <- apply(samples, 2, sd)

# Show a per-sample summary table like the lab format
summary.tab <- data.frame(
  Sample = 1:25,
  Mean   = round(s.means, 4),
  StdDev = round(s.sds, 4)
)
summary.tab





# 3. Calculate the mean and standard deviation of the 25 sample means 
#    and state the relationship of them with true mean and true standard deviation.

samplemean <- mean(s.means)   # mean of the 25 sample means
samplesd   <- sd(s.means)     # SD of the 25 sample means

n <- 6
true_sd_mean <- popsd / sqrt(n)  # theoretical SD of the sample mean

# Print
samplemean
samplesd
true_sd_mean

# - Expect: samplemean ≈ popmn       (more samples -> closer)
# - Expect: samplesd   ≈ popsd/sqrt(n)

