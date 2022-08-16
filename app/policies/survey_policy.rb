class SurveyPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    true    
  end

  def show?
    scope.where(:id => survey.id).exists?    
  end


 def create?
    user.present?  
 end

def new?
  create?  
end

 def update?
   (user.present? && user == survey.organizer) || user.try(:admin?)
 end

 def edit?
   update?
 end

 def destroy?
   (user.present? && user == survey.organizer) || user.try(:admin?)    
 end

  private

    def survey
      record 
    end
end
