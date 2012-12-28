ActiveAdmin.register Interviewer do
  menu :parent => "View As"
	   actions :all, :except => [:destroy, :edit, :new]
end
