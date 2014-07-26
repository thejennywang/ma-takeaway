Friday Challenge - Week 4
==========================

Coaches, you can run these commands in irb or pry to experience the functionality of my takeaway program:

require './lib/order'
dish1 = Dish.new("vegan",6)
dish2 = Dish.new("veg",8)
dish3 = Dish.new("meat",10)
jenny = Customer.new
jenny.add_to_order(dish1, 3)
jenny.add_to_order(dish2, 2)
jenny.add_to_order(dish3)
jenny.place(Order)
my_order = Order.new(jenny)
order.confirm_total