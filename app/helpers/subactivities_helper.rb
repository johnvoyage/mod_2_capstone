module SubactivitiesHelper

  require 'rubygems'
  require 'mechanize'

  def create_choice(subactivity)
    # byebug
    Choice.find_or_create_by(user_id: session[:user_id], subactivity_id: subactivity.id)
  end

  # def related_urls(term)
  #   agent = Mechanize.new
  #   agent.set_proxy '78.186.178.153', 8080
  #   byebug
  #   page = agent.get('http://www.google.com/')
  #   byebug
  #
  #   google_form = page.form('f')
  #   google_form.q = term
  #
  #   page = agent.submit(google_form, google_form.buttons.first)
  #
  #   urls = []
  #   page.links.each do |link|
  #     if link.href.to_s =~/url.q/
  #       str=link.href.to_s
  #       strList=str.split(%r{=|&})
  #       url=strList[1]
  #       urls << url
  #     end
  #   end
  #   urls
  # end
#
# THIS IS THE RELATED CODE THAT WAS ORIGINALLY IN SUBACTIVITIES SHOW
# 
  # <ul>
  #   <% @subactivity.related_urls(@subactivity.name).each do |url| %>
  #     <li><%= url %></li>
  #   <% end %>
  # </ul>

end

# AIzaSyDhYoAgU0X_JN5wQ5OUPFRd_Lk4HkO7E9Y

# AIzaSyAr66MSGAzqnY06IJAXgyEaL9wnx73hFBA
