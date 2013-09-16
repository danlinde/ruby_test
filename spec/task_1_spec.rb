require_relative '../lib/task_1'

describe Array2 do
	let(:array) {Array2.new}

	it "should compute the sum of an empty array" do
		test_array = []
		expect(array.inject(test_array, 'sum')).to eq 0
	end

	it "should compute the sum of an array with one element" do
		test_array = [5]
		expect(array.inject(test_array, 'sum')).to eq(5)
	end

	it "should compute the sum of an array with many elements" do
		test_array = [5, 10, 15, 20]
		expect(array.inject(test_array, 'sum')).to eq(50)
	end

end