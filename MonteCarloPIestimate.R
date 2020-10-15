trials <- 100000000p
precision <- 0.0000001

xs <- runif(trials)
ys <- runif(trials)
hits <- sqrt(1 - xs^2) > ys
result <- sum(hits)/trials*4

print(result)