class Teacher < ActiveRecord::Base
	belongs_to :person
	has_many :packages
	has_many :matriculation_exams
	has_many :rooms, :through => :packages
	has_many :schedules, :through => :packages
	has_many :matriculations, :through => :matriculation_exams
end
