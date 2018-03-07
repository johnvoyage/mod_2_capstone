class Interest < ApplicationRecord

  has_many :activities

  def all_activities
    Activity.all.select do |activity|
      activity.interest_id == self.id
    end
  end

  def what_activity_question
    case self.name
    when name_of_interest(1)
      "What are you interested in learning about?"
    when name_of_interest(2)
      "Where are you interested in travelling to?"
    when name_of_interest(3)
      "Who/what are you interested in helping out?"
    when name_of_interest(4)
      "Where are you interested in moving to?"
    when name_of_interest(5)
      "What are you interested in playing?"
    when name_of_interest(6)
      "What are you interested in creating?"
    end
  end

  def name_of_interest(num)
    Interest.all[num-1].name
  end


end
