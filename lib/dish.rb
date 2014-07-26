class Dish

	def initialize(name='dish',price=5)
		@price = price
		@name = name
	end

	attr_accessor :price, :name

end