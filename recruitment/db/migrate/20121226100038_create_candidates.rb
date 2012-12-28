class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :age
      t.string :sex
      t.string :email
      t.string :mobile
      t.string :experience
      t.string :college
      t.string :year_of_passing
      t.text :platform
      t.string :vendor
      t.string :round
      t.datetime :date_of_interview
      t.text :interviewers
      t.string :status

      t.timestamps
    end
  end
end
