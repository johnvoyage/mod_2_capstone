module WelcomesHelper


  def name_of_interest(num)
    Interest.all[num-1].name
  end

  def random_three_activities(interest_id)
    Activity.all.select do |activity|
      activity.interest_id == interest_id
    end.sample(3)
    # .map do |activity|
    #   activity.name
    # end

  end

  def random_three_subactivities(interest_id)
    activities = random_three_activities(interest_id)
    subactivities = []
    activities.each do |activity|
      subactivities  <<
      Subactivity.all.select do |subactivity|
        subactivity.activity_id == activity.id
      end.sample(1)[0]
    end
    [activities, subactivities]
  end


  # def random_three_subactivities
  #   # Subactivity.all.select do |subactivity|
  #   #   activity_id = Activity.all.sample.id
  #   #   subactivity.id == activity_id
  #   end.sample(3)
  # end

  def interest_example(interest_num, sample_num)
    sample = random_three_interests[sample_num-1]
    "I'm interested in #{name_of_interest[interest_num]}"
  end
end
