class Participation < ApplicationRecord
  belongs_to :participant, class_name: "User", foreign_key: "user_id"
  belongs_to :participated_survey, class_name: "Survey", foreign_key: "survey_id"
end
