class User

attr_accessor :name,:age,:groc_bill,:orig_bill

def initialize(name,age,groc,orig)

	@name,@age,@groc_bill,@orig_bill=name,age,groc,orig
	
end
end



class Employee < User
attr_accessor :id
def initialize(name,age,groc,orig,id)
   @id = id
super(name,age,groc,orig)
	
end

def discount
	
	puts "Since you are our employee, you will be getting 30% on non-grocery items.Also you will be getting 5% discount on total bill."	
	@bill_amt=@orig_bill
	@nongroc_bill=(@bill_amt)-(@groc_bill)
	@nongroc_bill= (0.7)*(@nongroc_bill)
	@bill_amt=(@nongroc_bill)+(@groc_bill)
	@a=(@bill_amt)/100
	@b=@a*5
	@bill_amt=(@bill_amt)-@b
	puts "Total bill is : #@bill_amt"
	@bill_amt
end
end

class Customer < User
attr_accessor :yoj,:aff
def initialize(name,age,groc,orig,yoj,aff)
   @yoj,@aff = yoj,aff
super(name,age,groc,orig)	
end


def af
	@bill_amt=@orig_bill
	@nongroc_bill=(@bill_amt)-(@groc_bill)
	@nongroc_bill= (0.9)*(@nongroc_bill)
	@bill_amt=(@nongroc_bill)+(@groc_bill)
	@a=(@bill_amt)/100
	@b=@a*5
	@bill_amt=(@bill_amt)-@b
	puts "Since your an affliated customer, you will be getting 10% on non-grocery items.Also you will be getting 5% discount on total bill."	
	puts "Total bill is : #@bill_amt"
	@bill_amt
end

def old
@bill_amt=@orig_bill
	@nongroc_bill=(@bill_amt)-(@groc_bill)
	@nongroc_bill= (0.95)*(@nongroc_bill)
	@bill_amt=(@nongroc_bill)+(@groc_bill)
	@a=(@bill_amt)/100
	@b=@a*5
	@bill_amt=(@bill_amt)-@b
	puts "Total bill is : #@bill_amt"
	@bill_amt
end

def new1

	@bill_amt=@orig_bill
	@a=(@bill_amt)/100
	@b=@a*5
	@bill_amt=(@bill_amt)-@b
        puts "As you are shopping with us you will be getting 5% discount on total bill."	
	puts "Total bill is : #@bill_amt"
	@bill_amt
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
	puts " Groceries bill is:#{employee.groc_bill}"
	puts " total bill is:#{employee.orig_bill}"
	employee.discount
	puts " THANK YOU FOR SHOPPING WITH US"	

else

customer=Customer.new("ankit",120,500,1000,2012,0)

        puts " The customer details are as follows:"
	puts " Name of the customer:#{customer.name}"
	puts " Age is :#{customer.age}"
	puts " Groceries bill is:#{customer.groc_bill}"
	puts " total bill is:#{customer.orig_bill}"
	customer.discount
	puts " THANK YOU FOR SHOPPING WITH US"
	
end
end
	