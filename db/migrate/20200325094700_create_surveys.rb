class CreateSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :surveys do |t|
      t.integer :systolic_blood_pressure
      t.integer :diastolic_blood_pressure
      t.integer :pulse
      t.integer :sugar_level
      t.float :temperature
      t.boolean :depreciated
      t.timestamps
    end
  end
end
