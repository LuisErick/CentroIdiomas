class MatriculationCourse < ActiveRecord::Base
	belongs_to :matriculation
	belongs_to :level
	belongs_to :package
	has_many :scores
	has_many :student_attendances	
	has_many :states, :through => :student_attendances
end
