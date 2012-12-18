require 'c:/Users/Ankit/Project-1/user.rb'

class Employee < User
	attr_accessor :id
	def initialize(n,a,g,o,id)
		@id = id
		super(n,a,g,o)
		
	end

	def discount
		
		puts "Since you are our employee, you will be getting 30% on non-grocery items.Also you will be getting 5% discount on total bill."	
		
		@bill_amt=@orig
		@ng_amt=(@bill_amt)-(@groc_amt)
		@ng_amt= (0.7)*(@ng_amt)
		@bill_amt=(@ng_amt)+(@groc_amt)
		@a=(@bill_amt)/100
		@b=@a*5
		@bill_amt=(@bill_amt)-@b
		puts "Total bill is : #@bill_amt"
	end
end

class Customer < User
	attr_accessor :yoj,:aff
	def initialize(n,a,g,o,yoj,aff)
		@yoj,@aff = yoj,aff
		super(n,a,g,o)	
	end


	def af
		@bill_amt=@orig
		@ng_amt=(@bill_amt)-(@groc_amt)
		@ng_amt= (0.9)*(@ng_amt)
		@bill_amt=(@ng_amt)+(@groc_amt)
		@a=(@bill_amt)/100
		@b=@a*5
		@bill_amt=(@bill_amt)-@b
		puts "Since your an affliated customer, you will be getting 10% on non-grocery items.Also you will be getting 5% discount on total bill."	
		puts "Total bill is : #@bill_amt"
	end

	def old
		@bill_amt=@orig
		@ng_amt=(@bill_amt)-(@groc_amt)
		@ng_amt= (0.95)*(@ng_amt)
		@bill_amt=(@ng_amt)+(@groc_amt)
		@a=(@bill_amt)/100
		@b=@a*5
		@bill_amt=(@bill_amt)-@b
		puts "Total bill is : #@bill_amt"

	end

	def new1

		@bill_amt=@orig
		@a=(@bill_amt)/100
		@b=@a*5
		@bill_amt=(@bill_amt)-@b
		puts "As you are shopping with us you will be getting 5% discount on total bill."	
		puts "Total bill is : #@bill_amt"
	end

	def discount
		

		if aff==1
			af

		else
			
			if yoj<2010
				
				puts "Since your our customer for last 2 years, you will be getting 5% on non-grocery items.Also you will be getting 5% discount on total bill."	
				old
			else
				new1	
			end
		end

	end
	puts "Enter 1 for employee and 0 for a regular customer"
	choice = gets.to_i

	if choice==1

		employee=Employee.new("Sagar",20,500,1000,1238)


		puts " The customer details are as follows:"
		puts " Name of the customer:#{employee.name}"
		puts " Age is :#{employee.age}"
		puts " Employee id is: #{employee.id}"
		puts " Groceries bill is:#{employee.groc_amt}"
		puts " total bill is:#{employee.orig}"
		employee.discount
		puts " THANK YOU FOR SHOPPING WITH US"	

	else

		customer=Customer.new("ankit",120,500,1000,2012,0)

		puts " The customer details are as follows:"
		puts " Name of the customer:#{customer.name}"
		puts " Age is :#{customer.age}"
		puts " Groceries bill is:#{customer.groc_amt}"
		puts " total bill is:#{customer.orig}"
		customer.discount
		puts " THANK YOU FOR SHOPPING WITH US"
		
	end
end
