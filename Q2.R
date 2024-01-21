# Function to simulate the birthday problem
simulate_birthday_problem <- function(n) {
  birthdays <- sample(1:365, n, replace = TRUE)
  has_shared_birthday <- length(birthdays) != length(unique(birthdays))
  return(has_shared_birthday)
}

# Number of classmates to simulate
n_classmates <- seq(2, 100, by = 1)

# Simulate the birthday problem for each number of classmates
probabilities <- sapply(n_classmates, function(n) {
  mean(replicate(1000, simulate_birthday_problem(n)))
})

# Plot the simulated data
plot(n_classmates, probabilities, type = "b",  pch = 20,
     xlab = "Number of Classmates", ylab = "Probability of Shared Birthday",
     main = "Simulated Birthday Problem")