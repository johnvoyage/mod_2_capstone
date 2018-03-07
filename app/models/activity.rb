class Activity < ApplicationRecord

  belongs_to :interest
  has_many :subactivities

  validates :name, presence: true
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
