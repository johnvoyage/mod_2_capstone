## Project title
This is Connectly, an activity companion discovery tool inpired by Meetup.com

## Motivation
Sites like Meetup and Facebook are bogged down by so many similar (if not identical) groups that users can find themselves having options paralysis. The idea behind Connectly is to make fewer groups for each activity, but ensuring that each groups are more committed.

## Build status
This build is now deprecated. It was done as a paired programming project in one week by John York and Anthony Fields.

## Demo
Here is a demo of the app:
https://www.youtube.com/watch?v=O7oKxrhMfm4&feature=youtu.be

## Tech/framework used
- Built with Ruby on Rails (both front- and back-end)
- There is some minor JavaScript on the front-end.
- Bulma

## Code Example
One of the hardest parts we found was trying to abstract out code that kept the website reading as proper english:

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
