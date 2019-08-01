# Sean Trott
# Code to demonstrate p-hacking

library(tidyverse)

# set seed for reproducibility
set.seed(1)

# Generate target vector
y = rnorm(1000, 50, 5)

# Generate predictor dist
og_x = rnorm(1000, 90, 5)
og_test = summary(lm(y ~ og_x))

# Run simulations
TESTS = c(1:1000)
test_coef = c()
test_p = c()
for (i in TESTS) {
  new_x = sample(og_x)
  new_test = summary(lm(y ~ new_x))
  test_coef[i] = new_test$coefficients[2]
  test_p[i] = new_test$coefficients[8]
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
       title = "Statistics for randomly shuffled tests") +
  theme_minimal()

# ggsave("shuffled_phacking.pdf", 
#        units="in", width=6, height=4, dpi=300)

d %>%
  ggplot() +
  geom_point(aes(x = test_coef, y = p), color = "black") +
  geom_point(aes(x = test_coef, y = p.adjust(p, method = "holm"), color = "holm")) +
  geom_point(aes(x = test_coef, y = p.adjust(p, method = "fdr"), color = "fdr")) +
  geom_hline(yintercept = .05, linetype = "dotted") +
  labs(x = "Coefficient",
       y = "P-value",
       title = "Statistics for randomly shuffled tests") +
  theme_minimal() 

# ggsave("shuffled_phacking_with_correction.pdf", 
#        units="in", width=6, height=4, dpi=300)




################ Simulate sub-group analyses
# set seed for reproducibility
set.seed(1)

# Generate target vector
y = rnorm(1000, 50, 5)

# Generate predictor dist
og_x = rnorm(1000, 90, 5)
og_test = summary(lm(y ~ og_x))

# Run sub-group analyses
SPLITS = c(1:1000)
SUBGROUP_SIZE = c(30:90)
test_coef = c()
test_p = c()
size_v = c()
for (i in TESTS) {
  size = sample(SUBGROUP_SIZE, 1)
  new_x = sample(og_x, size)
  new_y = sample(y, size)
  new_test = summary(lm(new_y ~ new_x))
  test_coef[i] = new_test$coefficients[2]
  test_p[i] = new_test$coefficients[8]
  size_v[i] = size
}

d = data.frame(coef = test_coef,
               p = test_p,
               split_size = size_v)

d %>%
  ggplot(aes(x = test_coef,
             y = test_p)) +
  geom_point() +
  geom_hline(yintercept = .05, linetype = "dotted") +
  labs(x = "Coefficient",
       y = "P-value",
       title = "Statistics for randomly shuffled splits") +
  theme_minimal()


# ggsave("shuffled_p_hacking_subgroup.pdf", 
#       units="in", width=6, height=4, dpi=300)

# Count number passing threshold
nrow(filter(d, p < .05))
nrow(filter(d, p < .05)) / nrow(d)

