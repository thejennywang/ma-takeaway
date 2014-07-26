require_relative 'order'

class Customer
	def initialize(ordered_dishes=[])
		@ordered_dishes = ordered_dishes
	end

	attr_accessor :ordered_dishes

	def add_to_order(dish, quantity=1)
		quantity.times do 
			ordered_dishes << dish
		end
	end

	def place(order)
		order.new(self)
	end
end