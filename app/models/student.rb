class Student < ActiveRecord::Base
	belongs_to :person
	has_one :unica_student
	has_many :matriculations
	has_many :administratives, :through => :matriculations
	has_many :languages, :through => :matriculations
	has_many :course_types, :through => :matriculations	
	has_many :faculties, :through => :unica_student
	has_many :grades, :through => :unica_student
end


