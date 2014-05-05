class Administrative < ActiveRecord::Base
	belongs_to :person
	has_one :accountant
	has_one :secretary
	has_one :administrator
	has_many :matriculations
	has_many :students, :through => :matriculations	
	has_many :languages, :through => :matriculations
	has_many :course_types, :through => :matriculations
end
