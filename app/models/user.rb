class User < ApplicationRecord

  has_many :choices
  has_many :subactivities, through: :choices

  before_save { self.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password

  def display_name
    "#{first_name} #{last_name}"
  end

  def all_subactivities_ids
    Choice.all.select do |choice|
      choice.user_id == self.id
    end.map do |choice|
      choice.subactivity_id
    end
  end

  def all_subactivities
    # byebug
    Subactivity.all.select do |subactivity|
      all_subactivities_ids.include?(subactivity.id)
    end
  end

  def updated_month_day_year
    updated_at.strftime("%B %d, %Y")
  end

  def created_month_day_year
    updated_at.strftime("%B %d, %Y")
  end

  def select_choice(index)
    Choice.all.select do |choice|
      choice.user_id == self.id
    end[index]
  end

end
