class CreateSurveys < ActiveRecord::Migration[7.0]
  def change
    create_table :surveys do |t|
      t.string :survey_name
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :location

      t.timestamps
    end
  end
end
