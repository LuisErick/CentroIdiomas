class Faculty < ActiveRecord::Base
	has_many :unica_students
	has_many :students, :through => :unica_students
	has_many :grades, :through => :unica_students
end
