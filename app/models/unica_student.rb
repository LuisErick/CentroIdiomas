class UnicaStudent < ActiveRecord::Base
	belongs_to :student
	belongs_to :faculty
	belongs_to :grade
end
