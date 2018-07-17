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

def what_subactivity_question<br/>
&nbsp;&nbsp;case self.interest_id<br/>
&nbsp;&nbsp;when 1<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"Which #{self.name} are you interested<br/> in learning?"<br/>
&nbsp;&nbsp;when 2<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"What do you want to do in<br/> #{self.name}?"<br/>
&nbsp;&nbsp;when 3<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"How would you like to help<br/> #{self.name}?"<br/>
&nbsp;&nbsp;when 4<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"Where in #{self.name} would you like<br/> to move?"<br/>
&nbsp;&nbsp;when 5<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"Which #{self.name} are you interested in playing?"<br/>
&nbsp;&nbsp;when 6<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"What kind of #{self.name} are you interested in creating?"<br/>
&nbsp;&nbsp;end<br/>
end<br/>
