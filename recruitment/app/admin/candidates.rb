ActiveAdmin.register Candidate do
  	menu :parent => "View As"
	   actions :all, :except => [:destroy, :edit, :new]
	   filter :name
	   filter :vendor
	   filter :platform
	   filter :round
	   filter :interviewers
	   filter :date_of_interview
	   filter :status
	 index do
  selectable_column
  column :name
  column :vendor
  column :platform
  column :round
  column :date_of_interview
  column :interviewers
  column :status
  default_actions
end
end


