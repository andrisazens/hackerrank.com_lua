
mealCost = 10.25
tipPercent = 17
taxPercent = 5 

tip = mealCost * (tipPercent / 100);
tax = mealCost * (taxPercent / 100);
total = mealCost + tip + tax;

rounded = math.floor(total+0.5)
print(rounded)
print(string.format("The total meal cost is %i dollars.", total))