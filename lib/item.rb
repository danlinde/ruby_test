class Item

	attr_accessor :item

	def initialize(item)
		@item = item
		@amount = amount
	end

	def amount
		if @item == 1   		# Daily Special
			@amount = 5.to_i
		elsif @item == 2		# Galaxy Shrimp
			@amount = 20.to_i
		elsif @item == 3		# 4 Cans of Coke
			@amount = 4.to_i
		end
	end


end

