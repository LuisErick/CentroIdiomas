class Student < ActiveRecord::Base
	belongs_to :person
	has_one :unica_student
	has_many :matriculations
end
