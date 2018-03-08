class CreateSubactivities < ActiveRecord::Migration[5.1]
  def change
    create_table :subactivities do |t|
      t.string :name
      t.text :description
      t.integer :activity_id
      t.timestamps
    end
  end
end
