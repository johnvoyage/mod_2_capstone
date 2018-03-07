module WelcomesHelper


  def name_of_interest(num)
    Interest.all[num-1].name
  end

  def random_three_interests
    Interest.all.sample(3)
  end

  def interest_example(interest_num, sample_num)
    sample = random_three_interests[sample_num-1]
    "I'm interested in #{name_of_interest[interest_num]}"
  end
end
