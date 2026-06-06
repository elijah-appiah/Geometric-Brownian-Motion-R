# 📈 Geometric Brownian Motion Simulation in R

A lightweight and reproducible implementation of **Geometric Brownian Motion (GBM)** in **R** for simulating asset price dynamics under stochastic uncertainty. This project demonstrates how stock prices can evolve over time using the standard GBM framework widely applied in quantitative finance, option pricing, portfolio management, and risk analysis.

---

## 📖 Overview

Geometric Brownian Motion is one of the most widely used stochastic processes in financial economics and forms the foundation of the famous Black–Scholes option pricing model.

The GBM process is defined as:

\[
dS_t = \mu S_t dt + \sigma S_t dW_t
\]

where:

- **\(S_t\)** = Asset price at time *t*
- **\(\mu\)** = Expected return (drift)
- **\(\sigma\)** = Volatility
- **\(dW_t\)** = Brownian motion increment

This simulation generates multiple possible future asset price paths using Monte Carlo techniques.

---

## 📊 Simulation Output

<p align="center">
  <img src="https://github.com/elijah-appiah/Geometric-Brownian-Motion-R/blob/main/GBM%20Simulation.png" alt="Geometric Brownian Motion Simulation" width="850">
</p>

---

## ✨ Features

- Simulates multiple asset price paths simultaneously
- Uses discrete-time approximation of Geometric Brownian Motion
- Fully customizable model parameters
- High-quality visualization with **ggplot2**
- Simple and well-documented R code
- Suitable for teaching, learning, and financial research

---

## ⚙️ Model Parameters

The script currently uses:

| Parameter | Description | Value |
|------------|------------|--------|
| S0 | Initial asset price | 100 |
| μ | Expected return (drift) | 0.08 |
| σ | Volatility | 0.20 |
| T | Time horizon (years) | 1 |
| N | Trading periods | 252 |
| Paths | Number of simulated paths | 20 |

---

## 📦 Requirements

Install the required package before running the script:

```r
install.packages("ggplot2")
```

---

## ▶️ Running the Simulation

Execute the script in R:

```r
source("Brownian Motion Simulation.R")
```

The script will:

1. Generate random shocks from a standard normal distribution.
2. Simulate 20 Geometric Brownian Motion price paths.
3. Store the results in a data frame.
4. Produce a visualization of the simulated asset trajectories.

---

## 📂 Repository Structure

```text
├── Brownian Motion Simulation.R
├── images
│   └── gbm_simulation.png
└── README.md
```

---

## 🎯 Applications

- Quantitative Finance
- Financial Econometrics
- Monte Carlo Simulation
- Asset Pricing Models
- Risk Management
- Option Pricing
- Academic Research and Teaching

---

## 👨‍💻 Author

**Elijah Appiah**  
PhD Candidate in Economics  
National Institute of Development Administration (NIDA)

---

## 📜 License

This project is licensed under the MIT License.

---

### ⭐ If you find this project useful, consider starring the repository and sharing it with others interested in quantitative finance and stochastic modeling.
