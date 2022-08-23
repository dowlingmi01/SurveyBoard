class AddCompletesNeededToSurveys < ActiveRecord::Migration[7.0]
  def change
    add_column :surveys, :completes_needed, :integer
  end
end
