class StudentAttendance < ActiveRecord::Base
	belongs_to :matriculation_course
	belongs_to :state
end
