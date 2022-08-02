class SurveysController < ApplicationController
	def new
		@survey = Survey.new
	end

	def create
		@survey = Survey.new(survey_params)

		if @survey.save
			flash[:notice] = "Survey created!"
			redirect_to @survey
		else
			flash.now[:alert] = "Survey not created"
			render "new"
		end
	end

	def show
		@survey = Survey.find(params[:id])
	end

	def index
		@surveys = Survey.all
	end

	private 

		def survey_params
			params.require(:survey).permit(:survey_name, :description, :start_date, :end_date, :location)
		end

end
