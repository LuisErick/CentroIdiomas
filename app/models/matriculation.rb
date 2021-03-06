class Matriculation < ActiveRecord::Base
	belongs_to :language
	belongs_to :course_type
	belongs_to :student
	belongs_to :administrative
	has_many :payments
	has_one :matriculation_exam
	has_one :matriculation_course
	has_one :final_grade	
	has_many :packages, :through => :matriculation_courses
	has_many :levels, :through => :matriculation_courses	
	has_many :teachers, :through => :matriculation_exam
end
