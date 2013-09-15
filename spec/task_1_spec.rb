require_relative '../lib/task_1'

describe Array do
	let(:sum_array) {Array.new}

	it "should compute the sum of an empty array" do
		array = []
		expect(sum_array.sum(array)).to eq(0)
	end

	it "should compute the sum of an array with one element" do
		array = [5]
		expect(sum_array.sum(array)).to eq(5)
	end

	it "should compute the sum of an array with many elements" do
		array = [5, 10, 15, 20]
		expect(sum_array.sum(array)).to eq(50)
	end

end