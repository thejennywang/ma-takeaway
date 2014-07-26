require 'dish'

describe Dish do

	it 'is created with a price' do
		dish = Dish.new("dish",5)
		expect(dish.price).to eq 5
	end

	it 'is created with a name' do
		dish = Dish.new("name", 6)
		expect(dish.name).to eq "name"
	end

	it 'can be created with a different name' do
		dish_with_new_name = Dish.new("new_name")
		expect(dish_with_new_name.name).to eq "new_name"
	end

	it 'can be created with a different price' do
		dish = Dish.new("dish",50)
		expect(dish.price).to eq 50
	end
end