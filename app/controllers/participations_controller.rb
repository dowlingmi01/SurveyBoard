class ParticipationsController < ApplicationController

	before_action :set_survey
	before_action :authenticate_user!
	skip_after_action :verify_authorized

	def create
		@participation = @survey.participations.where(participant: current_user).first_or_create

		if @participation.save
			flash[:notice] = "You have selected this survey to start"
			redirect_to user_path(current_user)
		end
	end

	private

	def set_survey
		@survey = Survey.find(params[:survey_id])
	end
end
