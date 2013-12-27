ruby_test
=========

### Makers Academy - Week 4 Test

This test was made up of two parts. First, use TDD to write a recursive method. I wrote two methods:
- `sum(array)` which sums the elements of an array
- `Array#insect` which mimics the Array#inject method

Second, create an object oriented model of a food delivery/takeaway in Ruby using the Twilio API to send SMS messages to customers. This was also done using TDD.

	Here are the requirements for the test:
		- Write a class Takeaway.
		- Implement the following functionality:
			- list of dishes with prices
			- placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
			- The text sending functionality should be implemented using Twilio API. You'll need to register for it
			- Use twilio-ruby gem to access the API
			- Use a Gemfile to manage your gems
			- Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
			- However, if your Takeaway class was loaded into IRB and the order was placed, the text should actually be sent

The takeaway code could be improved in at least two ways. Writing an API wrapper to test the Twilio API more efficiently and further separating the classes to more closely resemble the actual objects found in the takeaway process. E.g. add dish, menu, line item etc.
 
