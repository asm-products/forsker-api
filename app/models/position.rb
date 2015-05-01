class Position < ActiveRecord::Base
	belongs_to :group
	has_many :keyword_assignments, dependent: :destroy
	has_many :keywords, through: :keyword_assignments
end
