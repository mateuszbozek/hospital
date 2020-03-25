class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surename
      t.bigint :personal_identify_number
      t.timestamps
    end
  end
end
