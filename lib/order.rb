require_relative 'customer'
require_relative 'dish' #put here to save time on irb
require 'twilio-ruby'

class Order
	def initialize(customer)
		@customer = customer
	end


	def total
		@customer.ordered_dishes.map {|dish| dish.price}.inject(:+)
	end

	def finalize
		send_text
	end

	def confirm_total
		puts "Your total is £#{self.total}. Do you agree? (y/n)"
		confirmation = gets.chomp
		if confirmation == "y"
			self.finalize
		else
			puts "Your order was not placed. Please try again."
		end
	end

	def send_text
		puts "Ordered! A text has been sent to Jenny through the Twilio API."
		account_sid = 'AC96ac641078ed6b7c6a0b7ae9b445852d'
		auth_token = 'f37bbb6fca3cb34fcb669982388e800e'
		@client = Twilio::REST::Client.new account_sid, auth_token
		message = @client.account.messages.create(:body => "Thank you! Your order was placed and will be delivered before #{(Time.now + (60 * 60)).strftime('%H:%M')}",
    :to => "+447940364695",     # Replace with your phone number
    :from => "+441588242051")   # Replace with your Twilio number
		puts message.sid
	end
end