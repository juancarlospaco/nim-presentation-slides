# Branch Prediction: Likely.
for value in 0..10:
  if likely(value < 7):   # Hints Optimizer "value is likely to be true"
    echo value # Fast
  else:
    echo "Slow"


# Branch Prediction: Unlikely.
for value in 0..10:
  if unlikely(value > 7): # Hints Optimizer "value is likely to be false"
    echo "Slow"
  else:
    echo value # Fast


# Branch Prediction is Not available on JavaScript target.
