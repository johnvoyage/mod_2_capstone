class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.integer :user_id
      t.integer :subactivity_id
      t.timestamps
    end
  end
end
