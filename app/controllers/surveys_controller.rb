class SurveysController < ApplicationController
	def index
		@surveys = Survey.all
	end

	def show
		@survey = Survey.find(params[:id])
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
		@survey = Survey.find(params[:id])
	end

	def update
		@survey = Survey.find(params[:id])

		if @survey.update(survey_params)
			redirect_to @survey
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@survey = Survey.find(params[:id])
		@survey.destroy

		redirect_to surveys_path, status: :see_other
	end


	private 

		def survey_params
			params.require(:survey).permit(:survey_name, :description, :start_date, :end_date, :location)
		end

end
