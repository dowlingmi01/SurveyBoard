class SurveysController < ApplicationController
	before_action :set_survey, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	# before_action :authorize_owner!, only: [:edit, :update, :destroy]

	def index
		@surveys = Survey.order(created_at: :desc)
		authorize @surveys, :index?
	end

	def show
		authorize @survey, :show?
	end

	def new
		@survey = Survey.new

		authorize @survey, :new?
	end

	def create
		@survey = Survey.new(survey_params)

		authorize @survey, :create?
		@survey.organizer = current_user

		if @survey.save
			flash[:notice] = "Survey created!"
			redirect_to @survey
		else
			flash.now[:alert] = "Survey not created"
			render :new, status: :unprocessable_entity
		end
	end

	def edit
		authorize @survey, :edit?
	end

	def update
		authorize @survey, :update?
		if @survey.update(survey_params)
			redirect_to @survey
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		authorize @survey, :destroy?
		@survey.destroy
		flash[:alert] = "Survey deleted successfully"
		redirect_to surveys_path
	end


	private 

		def set_survey
			@survey = Survey.find(params[:id])

#			authorize @survey

			rescue ActiveRecord::RecordNotFound
			flash.alert = "The page you requested does not exist"
			redirect_to surveys_path
		end

		def survey_params
			params.require(:survey).permit(:survey_name, :description, :start_date, :end_date, :location)
		end

		# def authorize_owner!
		# 	authenticate_user!

		# 	unless @survey.organizer == current_user
		# 		flash[:alert] = "You do not have permission to '#{action_name}' the '#{@survey.survey_name.upcase}'"
		# 		redirect_to surveys_path
		# 	end		
		# end
end
