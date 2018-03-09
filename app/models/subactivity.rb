class Subactivity < ApplicationRecord

  belongs_to :activity
  has_many :choices
  has_many :users, through: :choices

  include SubactivitiesHelper

  def all_users_ids
    Choice.all.select do |choice|
      choice.subactivity_id == self.id
    end.map do |choice|
      choice.user_id
    end
  end

  def all_users
    # byebug
    User.all.select do |user|
      all_users_ids.include?(user.id)
    end
  end

  def interest_name
    Interest.find(Activity.find(activity_id).interest_id).name.downcase
  end

  def activity_name
    Activity.find(activity_id).name
  end

  def blurb
    description[0..100] + "..."
  end

  def updated_month_day_year
    updated_at.strftime("%B %d, %Y")
  end

  def created_month_day_year
    updated_at.strftime("%B %d, %Y")
  end

end
