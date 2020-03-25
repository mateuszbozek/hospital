class AddPatientToSurvey < ActiveRecord::Migration[6.0]
  def change
    add_reference :surveys, :patient, foreign_key: true

  end
end
