class Feedback < ApplicationRecord
	belongs_to :presentation
	belongs_to :user

end
