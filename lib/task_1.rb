class Array

	# attr_reader :array

	# def initialize(array)
	# 	@array = array
	# end


	# array.inject(:+)

	# def inject(operator)
	# 	if operator == 'sum'
	# 		sum = 0
	# 		@array.map {|x| sum += x }
	# 		sum
	# 	else mult = 1
	# 		@array.map {|x| mult *= x}
	# 		mult
	# 	end
	# end

	# def inject(operator, l)
	# 	if operator == 'sum'
	# 		return 0 unless l > 0
	# 		l -= 1
	# 		return @array[l] + inject(operator, l)
	# 	else 
	# 		return 1 unless l > 0
	# 		l -= 1
	# 		return @array[l] * inject(operator, l)
	# 	end

	# end

	def insect
		memo = self[0]
		self[1..-1].each {|elem| memo = yield(memo, elem)}
		memo
	end

end



a = [1,2,3,4]



p a.insect { |memo, elem| memo + elem}





