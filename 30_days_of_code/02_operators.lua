mealCost = io.read("*number");
tipPercent = io.read("*number");
taxPercent = io.read("*number");

tip = mealCost * (tipPercent / 100);
tax = mealCost * (taxPercent / 100);
total = mealCost + tip + tax;

print(string.format("The total meal cost is %i dollars.", math.floor(total+0.5)));