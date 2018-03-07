# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(email: "tester.#@fi.com", first_name: "Tester", last_name: "", city: "City#", state: "S#", password: "123456", password_confirmation: "123456")
User.create(email: "tester.1@fi.com", first_name: "Tester", last_name: "One", city: "City1", state: "S1", password: "123456", password_confirmation: "123456")
User.create(email: "tester.2@fi.com", first_name: "Tester", last_name: "Two", city: "City2", state: "S2", password: "123456", password_confirmation: "123456")
User.create(email: "tester.3@fi.com", first_name: "Tester", last_name: "Three", city: "City3", state: "S3", password: "123456", password_confirmation: "123456")
User.create(email: "tester.4@fi.com", first_name: "Tester", last_name: "Four", city: "City4", state: "S4", password: "123456", password_confirmation: "123456")
User.create(email: "tester.5@fi.com", first_name: "Tester", last_name: "Five", city: "City5", state: "S5", password: "123456", password_confirmation: "123456")

# Interest.create(name: "")
Interest.create(name: "Learning")
Interest.create(name: "Traveling")
Interest.create(name: "Volunteering")
Interest.create(name: "Moving")
Interest.create(name: "Playing")
Interest.create(name: "Doing")

#UserInterest.create(user_id: , interest_id:)
UserInterest.create(user_id: 1, interest_id: 1)
UserInterest.create(user_id: 1, interest_id: 3)
UserInterest.create(user_id: 1, interest_id: 5)
UserInterest.create(user_id: 2, interest_id: 1)
UserInterest.create(user_id: 2, interest_id: 2)
UserInterest.create(user_id: 2, interest_id: 4)
UserInterest.create(user_id: 3, interest_id: 1)
UserInterest.create(user_id: 3, interest_id: 6)
UserInterest.create(user_id: 4, interest_id: 1)
UserInterest.create(user_id: 5, interest_id: 4)

# Activity.create(name: "", description: "-----I'm a description of an activity!!!-----", interest_id: #)
Activity.create(name: "sports", description: "Play some sports with some fun people. Maybe join a Zog League together since signing up as a free agent suuucks.", interest_id: 5) #1
Activity.create(name: "board/card games", description: "-----I'm a description of an activity!!!-----", interest_id: 5) #2
Activity.create(name: "a foreign language", description: "-----I'm a description of an activity!!!-----", interest_id: 1) #3
Activity.create(name: "Europe", description: "-----I'm a description of an activity!!!-----", interest_id: 2) #4
Activity.create(name: "computer stuff", description:"Coding camps are pretty expensive--let's see if we can get a group together to do FreeCodeCamp?", interest_id: 1) #5
Activity.create(name: "how to dance", description: "-----I'm a description of an activity!!!-----", interest_id: 1) #6
Activity.create(name: "USA road trip", description: "-----I'm a description of an activity!!!-----", interest_id: 2) #7
Activity.create(name: "Mexico", description: "-----I'm a description of an activity!!!-----", interest_id: 2) #8

# Subactivity.create(name: "", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: #)
Subactivity.create(name: "soccer", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 1) #1
Subactivity.create(name: "basketball", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 1) #2
Subactivity.create(name: "Settlers of Catan", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 2) #3
Subactivity.create(name: "League of Legends", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 2) #4
Subactivity.create(name: "Spanish", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 3) #5
Subactivity.create(name: "French", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 3) #6
Subactivity.create(name: "Ruby", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 5) #7
Subactivity.create(name: "JavaScript", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 5) #8
Subactivity.create(name: "booze cruise", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 4) #9
Subactivity.create(name: "road trip", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 7) #10
Subactivity.create(name: "skiing", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 4) #11
Subactivity.create(name: "Spring Break trip", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 8) #12
