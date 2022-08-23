class AddCompletesAchievedToSurveys < ActiveRecord::Migration[7.0]
  def change
    add_column :surveys, :completes_achieved, :integer
  end
end
