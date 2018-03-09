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

  def insert_preposition
    case Interest.find(Activity.find(activity_id).interest_id).id
    when 2 || 4
      " to "
    when 3
      " for "
    else
      ""
    end
  end

  def group_interest_phrase
    "We're interested in #{self.interest_name} #{self.activity_name}: #{self.name}"
  end


  def related_urls_hash(term)
    search = "https://www.googleapis.com/customsearch/v1?key=AIzaSyBFAaw-FrIqzQfUogDxkx-G7w844ACyeGM&cx=004691144422618487822:v5djm-re6s8&num=5&fields=items(title,link,displayLink,snippet,pagemap/cse_thumbnail/src)&q=#{term}"
    JSON.parse(RestClient.get(search))

  end

end
