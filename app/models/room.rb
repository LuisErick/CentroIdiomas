class Room < ActiveRecord::Base
	has_many :packages
	has_many :teachers, :through => :packages
	has_many :schedules, :through => :packages
end
