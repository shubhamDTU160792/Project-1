require 'C:\Users\dtu trainee\Project-1\project2.rb'
require "test/unit"
 
class TestEmployee < Test::Unit::TestCase
 
  def test_simple
    assert_equal(807.5, Employee.new("Sagar",20,500,1000,1238).discount,failure_message="Calculation failure!!! Please try Again")
    
  end

  def assert_not_nil(bill_amt, msg=nil)
  msg = message(msg) { "<#{mu_pp(bill_amt)}> expected to not be nil" }
  assert(!bill_amt.nil?, msg)
end

 
end
