class Subactivity < ApplicationRecord

  belongs_to :activity
  has_many :choices
  has_many :users, through: :choices

  def all_users_ids
    Choice.all.select do |choice|
      choice.subactivity_id == self.id
    end.map do |choice|
      choice.user_id
    end
  end

  def all_users
    User.all.select do |user|
      all_users_ids.include?(user.id)
    end
  end

end
