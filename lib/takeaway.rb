require_relative './item'

require 'bundler/setup'
require 'twilio-ruby'

class Takeaway

	def initialize
	
	end

	def get_menu
		menu = File.read("/Users/hackney/temp/ruby_test/lib/menu.dat")
		menu
	end

	def get_order
		puts "To order, enter Item No."
		puts "e.g. to order 2 Daily Specials, enter: 1 1"
		puts "Select items to purchase: "
		@order = gets.chomp
	end

	def get_check_total
		puts "What is your total? : "
		@customer_total = gets.to_f
	end

	def write_check
		items = @order.split(" ")
		@order_details = items.map {|item| Item.new(item.to_i)}
		@order_details.inject(0) {|sum, item| sum + item.amount}.round(2)
	end

	def verify_total
		raise "you tried to cheat me!!! get out!!!"
			unless @customer_total == @get_check_total
				self.order_confirmation
			end
	end

	def order_confirmation
		client = Twilio::REST::Client.new 'AC78ba8e7bc5838510fcb7195c643184bf', '4c5eac140585ba9a0f70822222ac0957'
		client.account.sms.messages.create(
		  :from => '+15005550006',
		  :to => '+447411043924',
		  :body => 'Thank you! Your order was placed and will be delivered before 18:52')
	end
end

