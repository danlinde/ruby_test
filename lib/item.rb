class Item

	attr_accessor :item

	def initialize(item)
		@item = item
		@amount = amount
	end

	def amount
		if @item == 1   		# Daily Special
			@amount = 4.95
		elsif @item == 2		# Galaxy Shrimp
			@amount = 19.99
		elsif @item == 3		# 4 Cans of Coke
			@amount = 3.99
		end
	end


end

