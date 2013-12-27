class Sum_Array

	# def sum(array)
		#// for you to implement

	# array.inject(:+)

	# 	sum = 0
	# 	array.map {|x| sum += x }
	# 	p sum
	# end

	def sum(array)
	  return 0 unless array.length > 0
	  return array.shift + sum(array)
	end
	

end