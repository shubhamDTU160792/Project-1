class Candidate < ActiveRecord::Base
  attr_accessible :age, :college, :date_of_interview, :email, :experience, :interviewers, :mobile, :name, :platform, :round, :sex, :status, :vendor, :year_of_passing
 def self.search(search)  
    if search  
      where('name LIKE ?', "%#{search}%")  
    else  
      scoped  
    end  
  end  
   
end
