class MatriculationExam < ActiveRecord::Base
	belongs_to :matriculation
	belongs_to :teacher
end
