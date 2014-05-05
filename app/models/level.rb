class Level < ActiveRecord::Base
	has_many :matriculation_courses
	has_many :packages, :through => :matriculation_courses
	has_many :matriculations, :through => :matriculation_courses
end
