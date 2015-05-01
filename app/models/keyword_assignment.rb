class KeywordAssignment < ActiveRecord::Base
	belongs_to :group
	belongs_to :scientist
	belongs_to :event
	belongs_to :position
	belongs_to :keyword
end
