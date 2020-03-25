class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :description
      t.boolean :depreciated
      t.timestamps
    end
  end
end
