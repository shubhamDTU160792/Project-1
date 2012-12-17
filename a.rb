require 'C:\Users\Shubham Sharma\Project-1\project2.rb'
require "test/unit"
 
class TestEmployee < Test::Unit::TestCase
 
  def test_simple
    assert_equal(817, Employee.new("Sagar",20,500,1000,1238).discount )
    
  end
 
end
