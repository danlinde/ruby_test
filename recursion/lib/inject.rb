class Array

	def insect
		memo = self[0]
		self[1..-1].each {|elem| memo = yield(memo, elem)}
		memo
	end

end





