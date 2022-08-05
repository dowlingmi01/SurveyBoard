class SurveysController < ApplicationController
	before_action :set_survey, only: [:show, :edit, :update, :destroy]
	def index
		@surveys = Survey.all
	end

	def show
	end

	def new
		@survey = Survey.new
	end

	def create
		@survey = Survey.new(survey_params)

		if @survey.save
			redirect_to @survey
		else
			flash.now[:alert] = "Survey not created"
			render :new, status: :unprocessable_entity
		end
	end

	def edit
	end

	def update

		if @survey.update(survey_params)
			redirect_to @survey
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@survey.destroy

		redirect_to surveys_path, status: :see_other
	end


	private 

		def set_survey
			@survey = Survey.find(params[:id])

		rescue ActiveRecord::RecordNotFound
			flash.alert = "The page you requested does not exist"
			redirect_to surveys_path
		end

		def survey_params
			params.require(:survey).permit(:survey_name, :description, :start_date, :end_date, :location)
		end

end
