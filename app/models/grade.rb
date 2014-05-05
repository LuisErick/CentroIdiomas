class Grade < ActiveRecord::Base
	has_many :unica_students	
	has_many :faculties, :through => :unica_students
	has_many :students, :through => :unica_students
end
