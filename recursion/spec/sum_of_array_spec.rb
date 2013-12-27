require_relative '../lib/sum_of_array'

describe Sum_Array do
	let(:sum_array) {Sum_Array.new}

	it "should compute the sum of an empty array" do
		array = []
		expect(sum_array.sum(array)).to eq(0)
		p sum_array.sum(array)
	end

	it "should compute the sum of an array with one element" do
		array = [5]
		expect(sum_array.sum(array)).to eq(5)
		p sum_array.sum(array)
	end

	it "should compute the sum of an array with many elements" do
		array = [5, 10, 15, 20]
		expect(sum_array.sum(array)).to eq(50)
		p sum_array.sum(array)
	end

end

# To understand how to write it, answer the following questions:
# 	What would be the sum of the array if you knew the sum of all values but one?
# 	What would be the sum of an empty array?
# 	What woulbe the base case for this method?