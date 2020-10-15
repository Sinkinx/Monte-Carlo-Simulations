
trials <- 10000
precision <- 0.0000001
go <- TRUE
iter <- 0
lastHits <- 0
totTrials <- 0
lastResult <- 0

while(go) {
  iter = iter + 1
  xs <- runif(trials)
  ys <- runif(trials)
  hits <- sqrt(1 - xs^2) > ys
  lastHits <- lastHits + hits
  totTrials <- totTrials + trials
  result <- sum(lastHits)/totTrials*4
  err = abs(result - lastResult)
  lastResult = result
  print(totTrials)
  print(err)
  if(err<precision) break
  if(iter>10) break
}

print(result)