class Sum_Array

	def sum(array)
	  return 0 unless array.length > 0
	  return array.shift + sum(array)
	end
	
end
