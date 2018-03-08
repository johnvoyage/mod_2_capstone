module SubactivitiesHelper

  require 'rest-client'
  require 'json'

  def create_choice(subactivity)
    # byebug
    Choice.find_or_create_by(user_id: session[:user_id], subactivity_id: subactivity.id)
  end
end

def related_urls(term)
  search = "https://www.googleapis.com/customsearch/v1?key=AIzaSyBFAaw-FrIqzQfUogDxkx-G7w844ACyeGM&cx=004691144422618487822:v5djm-re6s8&q=#{term}"
  received_data = RestClient.get(search)
  byebug

end





  # search_old = "http://www.google.com/search?
  # start=0
  # &num=10
  # &q=red+sox
  # &cr=countryCA
  # &lr=lang_fr
  # &client=google-csbe
  # &output=xml_no_dtd
  # &cx=004691144422618487822:v5djm-re6s8"


# def related_urls_old(term)
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
