class User < ApplicationRecord
  has_many :organized_surveys, class_name: "Survey", dependent: :destroy 
  has_many :participations
  has_many :participated_surveys, through: :participations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         def to_s
          "#{username}"
         end

         def full_name
          "#{first_name} #{last_name}"           
         end
end
