class Array

	# array.inject(:+)

	# def inject(array)
	# 	sum = []
	# 	array.map {|x| sum += x }
	# 	p sum
	# end

	def sum(array)
		return 0 unless array.length > 0
		return array.shift + sum(array)
	end
	

end




