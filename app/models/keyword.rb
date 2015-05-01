class Keyword < ActiveRecord::Base
	has_many :keyword_assignments
	has_many :groups, 	 through: :keyword_assignments 
	has_many :events, 	 through: :keyword_assignments 
	has_many :positions, through: :keyword_assignments 
	has_many :scientists, through: :keyword_assignments 
end
