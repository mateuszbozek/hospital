class AddPatientToNote < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :patient, foreign_key: true
  end
end
