class CourseType < ActiveRecord::Base
	has_many :matriculations
	has_many :students, :through => :matriculations	
	has_many :languages, :through => :matriculations
	has_many :administratives, :through => :matriculations
end
