require 'C:\Users\dtu trainee\Project-1\project2.rb'
require "test/unit"
 
class TestCustomer < Test::Unit::TestCase
 
  def test_simple
    assert_equal(950, Customer.new("ankit",120,500,1000,2012,0).discount,failure_message="Calculation failure!!! Please try Again")
    
  end
 
end
