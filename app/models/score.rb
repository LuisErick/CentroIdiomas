class Score < ActiveRecord::Base
	belongs_to :matriculation_course
	belongs_to :score_type
end
