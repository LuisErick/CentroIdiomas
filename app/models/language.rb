class Language < ActiveRecord::Base
	has_many :matriculations
	has_many :students, :through => :matriculations	
	has_many :administratives, :through => :matriculations
	has_many :course_types, :through => :matriculations
end
