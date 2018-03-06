# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: "john.york@flatironschool.com", first_name: "John", last_name: "York", city: "Portland", state: "OR")
User.create(email: "anthony.fields@flatironschool.com", first_name: "Anthony", last_name: "Fields", city: "Sante Fe", state: "NM")

Interest.create(name: "Learning")
Interest.create(name: "Traveling")
Interest.create(name: "Volunteering")
Interest.create(name: "Moving")
Interest.create(name: "Playing")
Interest.create(name: "Doing")

UserInterest.create(user_id: 1, interest_id: 2)
UserInterest.create(user_id: 2, interest_id: 1)

Activity.create(name: "Sports", commitment: 1)
Activity.create(name: "Board/card games", commitment: 1)
Activity.create(name: "Language", commitment: 2)
Activity.create(name: "Country", commitment: 4)
Activity.create(name: "Computer Coding", commitment: 5)

InterestActivity.create(interest_id: 5, activity_id: 1)
InterestActivity.create(interest_id: 5, activity_id: 2)
InterestActivity.create(interest_id: 1, activity_id: 3)
InterestActivity.create(interest_id: 1, activity_id: 4)
InterestActivity.create(interest_id: 2, activity_id: 5)
