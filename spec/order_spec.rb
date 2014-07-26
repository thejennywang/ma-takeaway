require 'order'

describe Order do
		let (:customer) { double :customer }
		let (:order) { Order.new(customer) }
		let (:dish1) { double :dish, name: "veg", price: 6 }
		let (:dish2) { double :dish, name: "vegan", price: 8 }
		let (:dish3) { double :dish, name: "meat", price: 10 }

		before (:each) do
			allow(customer).to receive(:ordered_dishes).and_return [dish1, dish2, dish3]
		end

	it 'can add the prices of multiple dishes' do
		expect(order.total).to eq (24)
	end

	it 'can send an SMS after order is finalized' do
		allow(order).to receive(:send_text)
		order.finalize
	end

	it 'confirms the total when the customer finalizes their order' do
		allow(order).to receive(:confirm_total)
		confirmation = "y"
		order.confirm_total
	end
end