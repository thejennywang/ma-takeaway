Friday Challenge - Week 4
==========================

Coaches, you can run these commands in irb or pry to experience the functionality of my takeaway program:

<br>require './lib/order'
<br>dish1 = Dish.new("vegan",6)
<br>dish2 = Dish.new("veg",8)
<br>dish3 = Dish.new("meat",10)
<br>jenny = Customer.new
<br>jenny.add_to_order(dish1, 3)
<br>jenny.add_to_order(dish2, 2)
<br>jenny.add_to_order(dish3)
<br>jenny.place(Order)
<br>my_order = Order.new(jenny)
<br>order.confirm_total<br>