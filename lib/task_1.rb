class Array2

	# array.inject(:+)

	# def inject(array)
	# 	sum = []
	# 	array.map {|x| sum += x }
	# 	p sum
	# end

	def inject(array, operator)
		if operator == 'sum'
			return 0 unless array.length > 0
			return array.shift + inject(array, operator)
		else 
			return 1 unless array.length > 0
			return array.shift * inject(array, operator)
		end
	end


end



# a = Array2.new

# p a.inject([1,2,3,4], 'multiply')


