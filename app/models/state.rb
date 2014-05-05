class State < ActiveRecord::Base
	has_many :student_attendances
	has_many :teacher_attendances
	has_many :matriculation_courses, :through => :student_attendances	
	has_many :packages, :through => :teacher_attendances
end
