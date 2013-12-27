require 'bundler/setup'
require 'twilio-ruby'

# put your own credentials here, get them at twilio.com
account_sid = 'AC78ba8e7bc5838510fcb7195c643184bf'
auth_token = '4c5eac140585ba9a0f70822222ac0957'

# set up a client to talk to the Twilio REST API
client = Twilio::REST::Client.new account_sid, auth_token

# send an sms
client.account.sms.messages.create(
  :from => '+15005550006',
  :to => '+447411043924',
  :body => 'Thank you! Your order was placed and will be delivered before 18:52')