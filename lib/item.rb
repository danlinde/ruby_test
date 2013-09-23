require './itemfromcsv'

class Item

	attr_accessor :item, :name, :amount

	def initialize(item, name, amount)
		@item = item
		@name = name
		@amount = amount
	end

	def amount #(object)
		# object.find_amount(item)
	end

end


# csv = ItemFromCSV.new

# csv.read_in_amount("./takeaway_menu.csv")
# # p item.read_in_amount("./takeaway_menu.csv")

# p item.amount()
# # p item.find_amount
# p item.item
# p item
# p Item.new(1)