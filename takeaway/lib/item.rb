require 'csv'

class Item

	attr_accessor :item, :amount

	def initialize(item)
		@item = item
		@amount = amount
		
	end

	def read_in_amount
		@menu_items = []
		CSV.foreach("./lib/takeaway_menu.csv", headers: true) do |row|
		@menu_items << [row[0],row[2]]
		end
	end

	def amount
		read_in_amount
		@menu_items[@item-1][1].to_i
	end

end
