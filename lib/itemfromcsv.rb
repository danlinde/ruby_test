require 'csv'
require './item'

class ItemFromCSV

	attr_reader :menu_items

	def initialize(csv_file_name)
		read_in_amount(csv_file_name)
	end

	def read_in_amount(csv_file_name)
		@menu_items = []
		CSV.foreach(csv_file_name, headers: true) do |row|
		@menu_items << Item.new(row[0],row[1],row[2])
		end
	end

	def amount
		@menu_items[item-1][2]
	end

	def cheap_items
		@menu_items.select{|i| item.amount < 10}
	end
end


csv = ItemFromCSV.new("./takeaway_menu.csv")




