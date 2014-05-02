class Person < ActiveRecord::Base
	belongs_to :user
	has_one :student
	has_one :teacher
	has_one :administrative
end
