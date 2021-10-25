class Presentation < ApplicationRecord
    belongs_to :user
	has_many :feedbacks, dependent: :destroy

	resourcify
end
