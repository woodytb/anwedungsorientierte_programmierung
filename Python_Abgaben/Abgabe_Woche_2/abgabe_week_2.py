stock = int(input("Please enter an initial stock level: "))
num_months = int(input("Please enter the number of month to plan: "))

sales_quantity = []
for month in range(num_months):
    sq = int(input("Please enter the planned sales quantity: "))
    sales_quantity.append(sq)

production_quantity = []
for month in range(num_months):
    if stock >= sales_quantity[month]:
        production_quantity.append(0)
        stock -= sales_quantity[month]
    else:
        production = sales_quantity[month] - stock
        stock = 0
        production_quantity.append(production)

for month in range(num_months):
    print("Production quantity month", month, "-", production_quantity[month])