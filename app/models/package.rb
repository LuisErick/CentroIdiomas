class Package < ActiveRecord::Base
	belongs_to :teacher
	belongs_to :schedule
	belongs_to :room
	has_many :matriculation_courses
	has_many :teacher_attendances	
	has_many :levels, :through => :matriculation_courses
	has_many :matriculations, :through => :matriculation_courses	
	has_many :states, :through => :student_attendances
end
