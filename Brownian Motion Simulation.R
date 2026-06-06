
# Parameters
S0 <- 100
mu <- 0.08
sigma <- 0.2
T <- 1
N <- 252
dt <- T / N
n_paths <- 20

# Time grid
time <- seq(0, T, length.out = N + 1)

# Initialize matrix
S <- matrix(0, nrow = N + 1, ncol = n_paths)
S[1, ] <- S0

# Generate shocks
Z <- matrix(rnorm(N * n_paths), nrow = N, ncol = n_paths)

# GBM simulation
for (i in 2:(N + 1)) {
  S[i, ] <- S[i - 1, ] * exp(
    (mu - 0.5 * sigma^2) * dt +
      sigma * sqrt(dt) * Z[i - 1, ]
  )
}

# Convert to data frame for plotting
df <- data.frame(
  time = rep(time, n_paths),
  price = as.vector(S),
  path = factor(rep(1:n_paths, each = N + 1))
)

# Plot
ggplot(df, aes(x = time, y = price, group = path, color = path)) +
  geom_line(size = 0.7) +
  labs(title = "Geometric Brownian Motion Simulation",
       x = "Time",
       y = "Asset Price") + 
  theme_bw()
