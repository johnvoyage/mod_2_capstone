class Activity < ApplicationRecord

  has_many :interest_activities
  has_many :interests, through: :interest_activities

  validates :name, :commitment, presence: true
  validates :name, uniqueness: true

  # def commitment_level
  #   case self.commitment
  #   when 1
  #     'Hobby'
  #   when 2
  #     'Serious Hobby'
  #   when 3
  #     'Part-time'
  #   when 4
  #     'Full-time'
  #   when 5
  #     'All In'
  #   end
  # end


end
