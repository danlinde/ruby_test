require 'takeaway'

describe Takeaway do

	let(:t) {Takeaway.new}

	it 'should show the user a menu' do
		expect(t.get_menu).to eq("***menu***\n\n1. \tDaily Special \t$4.95\n2. \tGalaxy Shrimp \t$19.99\n3. \t4 Cans of Coke \t$3.99\n\n***no substitutions***")	 
	end

	it 'should ask the customer for his order' do
		t.stub(:gets) {"1 1 1"}
		expect(t.get_order).to eq "1 1 1"
	end

	it 'should ask the customer for his total' do
		t.stub(:gets) {5}
		expect(t.get_check_total).to eq(5)
	end

	it 'should calculate the customers total' do
		t.stub(:gets).and_return("1 1 1")
		t.get_order
		expect(t.write_check).to eq(15)
	end

	it 'should raise exception if totals do not match' do
		t.stub(:gets => 25)
		t.get_check_total
		t.stub(:amount_per_till => 5)
		expect{t.verify_total}.to raise_error
	end

	it 'should set up a new client instance with the given sid and token' do
		twilio = Twilio::REST::Client.new('someSid', 'someToken')
		twilio.account_sid.should == 'someSid'
		twilio.instance_variable_get('@auth_token').should == 'someToken'
  	end

  	it 'should send an order confirmation' do
		expect(t.order_confirmation).to be_true
	end

	it 'should show delivery time to be one hour from now' do
		@time_now = Time.parse("2013-09-16 12:09:34")
  		Time.stub(:now).and_return(@time_now)
		expect(t.delivery_time).to eq(Time.now + (60 * 60))
	end

end