require 'takeaway'

describe Takeaway do

	let(:t) {Takeaway.new}

	it 'should show the user a menu' do
		expect(t.get_menu).to eq("***menu***\n\n1. \tDaily Special \t$4.95\n2. \tGalaxy Shrimp \t$19.99\n3. \t4 Cans of Coke \t$3.99\n\n***no substitutions***")	 
	end

	it 'should ask the customer for his order' do
		t.stub!(:gets) {"1 1 1"}
		expect(t.get_order).to eq "1 1 1"
	end

	it 'should ask the customer for his total' do
		t.stub!(:gets) {4.99}
		expect(t.get_check_total).to eq(4.99)
	end

	it 'should calculate the customers total' do
		t.stub!(:items)	{[1, 1, 1]}
		expect(t.write_check).to eq(14.85)
	end
end