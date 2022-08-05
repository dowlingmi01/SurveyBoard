class Survey < ApplicationRecord

	validates :survey_name, presence: true, length: {minimum: 5}
	validates :location, presence: true

end
