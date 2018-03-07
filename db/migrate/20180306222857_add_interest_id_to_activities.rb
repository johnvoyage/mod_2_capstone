class AddInterestIdToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :interest_id, :integer
  end
end
