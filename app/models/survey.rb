class Survey < ApplicationRecord
	searchkick
	belongs_to :organizer, class_name: "User", foreign_key: "user_id"

	validates :survey_name, presence: true, length: {minimum: 5}
	validates :location, presence: true

	mount_uploader :image, ImageUploader

end
