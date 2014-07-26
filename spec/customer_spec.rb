require 'customer'

describe Customer do
		let (:order) { double :order}
		let (:jenny) { Customer.new }

	it 'can initialize an order' do
		expect(jenny.ordered_dishes).to eq []
	end

	it 'can add a dish to an order' do
		dish = "dish"
		jenny.add_to_order(dish)
		expect(jenny.ordered_dishes).to eq [dish]
	end

	it 'can add 3 of a dish' do
		dish = "dish"
		jenny.add_to_order(dish, 3)
		expect(jenny.ordered_dishes).to eq [dish, dish, dish]
	end

	it 'can place their order' do
		expect(order).to receive(:new)
		jenny.place(order)
	end
end