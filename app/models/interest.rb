class Interest < ApplicationRecord

  has_many :user_interests
  has_many :users, through: :user_interests
  has_many :interest_activities
  has_many :activities, through: :interest_activities

  def all_activities
    InterestActivity.all.select do |interestactivity|
      interestactivity.interest_id == self.id
    end.map do |selected_ia|
      Activity.find(selected_ia.activity_id)
    end
  end

  def what_activity_question
    case self.name
    when "Learning"
      "What are you interested in learning about?"
    when "Traveling"
      "Where are you interested in travelling to?"
    when "Moving"
      "Where are you interested in moving to?"
    when "Volunteering"
      "Who/what are you interested in helping out?"
    when "Interest 5ing"
      "TBD"
    when "Interest 6ing"
      "TBD"
    end
  end

  Interest.create(name: "Learning")
  Interest.create(name: "Traveling")
  Interest.create(name: "Volunteering")
  Interest.create(name: "Moving")
  Interest.create(name: "Interest 5ing")
  Interest.create(name: "Interest 6ing")

end

#
# User.create(email: "john.york@flatironschool.com", first_name: "John", last_name: "York", city: "Portland", state: "OR")
# User.create(email: "anthony.fields@flatironschool.com", first_name: "Anthony", last_name: "Fields", city: "Sante Fe", state: "NM")
#
# Interest.create(name: "Learn")
# Interest.create(name: "Travel")
#
# UserInterest.create(user_id: 1, interest_id: 2)
# UserInterest.create(user_id: 2, interest_id: 1)
#
# Activity.create(name: "Sports", commitment: 1)
# Activity.create(name: "Language", commitment: 2)
# Activity.create(name: "Country", commitment: 4)
# Activity.create(name: "Computer Coding", commitment: 5)
#
# InterestActivity.create(interest_id: 1, activity_id: 1)
# InterestActivity.create(interest_id: 1, activity_id: 2)
# InterestActivity.create(interest_id: 1, activity_id: 4)
# InterestActivity.create(interest_id: 2, activity_id: 3)
