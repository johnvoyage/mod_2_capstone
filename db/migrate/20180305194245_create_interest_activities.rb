class CreateInterestActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :interest_activities do |t|
      t.integer :interest_id
      t.integer :activity_id
      t.timestamps
    end
  end
end
