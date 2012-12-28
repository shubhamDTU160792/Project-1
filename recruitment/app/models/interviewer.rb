class Interviewer < ActiveRecord::Base
  attr_accessible :name, :role
  def self.search(search)  
    if search  
      where('name LIKE ?', "%#{search}%")  
    else  
      scoped  
    end  
  end  
end
