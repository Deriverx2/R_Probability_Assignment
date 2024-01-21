# Parameters
average_calls_per_day = 25
num_days = 365

simulated_calls <- rpois(num_days, lambda = average_calls_per_day)

# Plot the distribution
hist(simulated_calls, col = "skyblue", main = "Simulated Calls Per Day Over 365 Days",
     xlab = "Number of Calls Per Day", ylab = "Frequency")

# Add labels and grid
abline(v = mean(simulated_calls), col = "red", lwd = 2, lty = 2)
legend("topright", legend = c("Mean"), col = c("red"), lwd = 2, lty = 2)
grid()