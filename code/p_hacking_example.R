# Sean Trott
# Code to demonstrate p-hacking

library(tidyverse)

# set seed for reproducibility
set.seed(1)

# Parameters
X_MEAN = sample(1:1000, 1)
X_SD = sample(1:10, 1)
Y_MEAN = sample(1:1000, 1)
Y_SD = sample(1:10, 1)
SUBGROUP_SIZE = 50
NUM_HACKS = 1000

# Generate data
x = rnorm(1000, mean=X_MEAN, sd=X_SD)
y = rnorm(1000, mean=Y_MEAN, sd=Y_SD)


test_coef = c()
test_p = c()
size_v = c()
for (i in c(1:NUM_HACKS)) {
  new_x = sample(x, SUBGROUP_SIZE)
  new_y = sample(y, SUBGROUP_SIZE)
  new_test = summary(lm(new_y ~ new_x))
  test_coef[i] = new_test$coefficients[2]
  test_p[i] = new_test$coefficients[8]
  size_v[i] = SUBGROUP_SIZE
}

d = data.frame(coef = test_coef,
               p = test_p)

d %>%
  ggplot(aes(x = test_coef,
             y = test_p)) +
  geom_point() +
  geom_hline(yintercept = .05, linetype = "dotted") +
  labs(x = "Coefficient",
       y = "P-value",
       title = "Statistics for randomly shuffled splits") +
  theme_minimal()


