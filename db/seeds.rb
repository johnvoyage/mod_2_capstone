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
Interest.create(name: "Creating")

#Choice.create(user_id: , interest_id:)
Choice.create(user_id: 1, subactivity_id: 1)
Choice.create(user_id: 1, subactivity_id: 2)
Choice.create(user_id: 1, subactivity_id: 3)
Choice.create(user_id: 2, subactivity_id: 4)
Choice.create(user_id: 2, subactivity_id: 5)
Choice.create(user_id: 2, subactivity_id: 6)
Choice.create(user_id: 3, subactivity_id: 7)
Choice.create(user_id: 3, subactivity_id: 8)
Choice.create(user_id: 4, subactivity_id: 9)
Choice.create(user_id: 5, subactivity_id: 10)

# Activity.create(name: "", description: "-----I'm a description of an activity!!!-----", interest_id: #)
Activity.create(name: "sports", description: "Play some sports with some fun people. Maybe join a Zog League together since signing up as a free agent sucks?", interest_id: 5) #1
Activity.create(name: "board/card games", description: "-----I'm a description of an activity!!!-----", interest_id: 5) #2
Activity.create(name: "foreign language", description: "-----I'm a description of an activity!!!-----", interest_id: 1) #3
Activity.create(name: "Europe", description: "-----I'm a description of an activity!!!-----", interest_id: 2) #4
Activity.create(name: "computer stuff", description:"Coding camps are pretty expensive--let's see if we can get a group together to do FreeCodeCamp?", interest_id: 1) #5
Activity.create(name: "dance", description: "-----I'm a description of an activity!!!-----", interest_id: 1) #6
Activity.create(name: "USA road trip", description: "-----I'm a description of an activity!!!-----", interest_id: 2) #7
Activity.create(name: "computer games", description: "-----I'm a description of an activity!!!-----", interest_id: 5) #8
Activity.create(name: "South America", description: "-----I'm a description of an activity!!!-----", interest_id: 2) #9
Activity.create(name: "animals", description: "-----I'm a description of an activity!!!-----", interest_id: 3) #10
Activity.create(name: "veterans", description: "-----I'm a description of an activity!!!-----", interest_id: 3) #11
Activity.create(name: "the homeless", description: "-----I'm a description of an activity!!!-----", interest_id: 3) #12
Activity.create(name: "London", description: "-----I'm a description of an activity!!!-----", interest_id: 4) #13
Activity.create(name: "Austin", description: "-----I'm a description of an activity!!!-----", interest_id: 4) #14
Activity.create(name: "Canada", description: "-----I'm a description of an activity!!!-----", interest_id: 4) #15
Activity.create(name: "web application", description: "-----I'm a description of an activity!!!-----", interest_id: 6) #16
Activity.create(name: "mural", description: "-----I'm a description of an activity!!!-----", interest_id: 6) #17
Activity.create(name: "clothing", description: "-----I'm a description of an activity!!!-----", interest_id: 6) #18

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
Subactivity.create(name: "salsa dancing", description: "-----I'm a description of a subdescription-----", commitment: 1, activity_id: 6) #12
