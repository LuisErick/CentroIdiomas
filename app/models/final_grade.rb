class FinalGrade < ActiveRecord::Base
	belongs_to :matriculation
	has_one :final_certification
end
