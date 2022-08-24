class Survey < ApplicationRecord
	searchkick
	belongs_to :organizer, class_name: "User", foreign_key: "user_id"
	belongs_to :category
	has_many :participations, dependent: :destroy
	has_many :participants, through: :participations

	validates :survey_name, presence: true, length: {minimum: 5}, uniqueness: true
	validates :location, presence: true

	mount_uploader :image, ImageUploader

end
