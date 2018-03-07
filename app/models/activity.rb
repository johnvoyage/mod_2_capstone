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

  def name_of_interest
    Interest.find(interest_id).name.downcase
  end

  def what_subactivity_question
    case self.interest_id
    when 1
      "Which #{self.name} are you interested in learning?"
    when 2
      "What do you want to do in #{self.name}?"
    when 3
      "How would you like to help #{self.name}?"
    when 4
      "Where in #{self.name} would you like to move?"
    when 5
      "Which #{self.name} are you interested in playing?"
    when 6
      "What kind of #{self.name} are you interested in creating?"
    end
  end

  def all_subactivities
    Subactivity.all.select do |subactivity|
      subactivity.activity_id == self.id
    end
  end

end
