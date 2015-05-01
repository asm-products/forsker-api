class Group < ActiveRecord::Base
	has_many :scientists 
	has_many :events, dependent: :destroy
	has_many :positions, dependent: :destroy
	has_many :keyword_assignments, dependent: :destroy
	has_many :keywords, through: :keyword_assignments

	#scope :bla, where(abc: true) #where("age < 20") #where("created_at desc")

	#serialize :telephon
end
