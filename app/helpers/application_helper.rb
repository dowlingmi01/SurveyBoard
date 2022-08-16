module ApplicationHelper
	def full_title(page_title = " ")
		default_title = "Clout Cloud"
		if page_title.empty?
			default_title
		else
			"#{page_title} | #{default_title}"
		end
	end

	def time_format(event_date)
		event_date.strftime("%A, %d %b %Y %l:%M %p")
	end

	def survey_status(survey)
		if survey.end_date <= Date.today
			content_tag(:span, "", class: "past")
		else
			content_tag(:span, "", class: "upcoming")
		end		
	end

	def admins_only(&block)
		block.call if current_user.try(:admin?)		
	end
	
end
