class Schedule < ActiveRecord::Base
	has_many :packages	
	has_many :teachers, :through => :packages
	has_many :rooms, :through => :packages
end
