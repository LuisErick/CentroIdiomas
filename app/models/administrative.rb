class Administrative < ActiveRecord::Base
	belongs_to :person
	has_one :accountant
	has_one :secretary
	has_one :administrator
	has_many :matriculations
end
