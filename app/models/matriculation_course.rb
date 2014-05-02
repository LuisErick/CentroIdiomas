class MatriculationCourse < ActiveRecord::Base
	belongs_to :matriculation_course
	belongs_to :level
	belongs_to :package
	has_many :scores
	has_many :student_attendances
end
