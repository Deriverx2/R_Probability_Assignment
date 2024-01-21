p_success = 0.75  # Probability of an account paying on time
n_accounts = 25   # Number of accounts in the sample

# Possible number of successes (0 to n_accounts)
x_values = 0:n_accounts

binomial_probabilities <- dbinom(x_values, size = n_accounts, prob = p_success)

# Plot the Binomial Probability Distribution
barplot(binomial_probabilities, names.arg = x_values, col = "skyblue", 
        main = "Binomial Probability Distribution",
        xlab = "Number of Clients Paying on Time", ylab = "Probability",
        ylim = c(0,0.2))
grid()
