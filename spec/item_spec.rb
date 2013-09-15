require_relative '../lib/item'

describe Item do
	let(:item) {Item.new(2)}

	it 'should initialize with the item' do
		expect(item.item).to eq(2)
	end

	it 'should return the amount for the item selected' do
		expect(item.amount).to eq(20)
	end

end