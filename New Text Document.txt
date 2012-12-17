require 'C:\Users\Shubham Sharma\Project-1\project2.rb'
require "test/unit"
 
class TestCustomer < Test::Unit::TestCase
 
  def test_simple
	if a==807.5
   	assert_equal(a, Customer.new("ankit",120,500,1000,2012,0).discount)
    	else
	assert_equal(111, Customer.new("ankit",120,500,1000,2012,0).discount)
  end
 
end
