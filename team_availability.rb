# take in times of day that employees have lunch and appts and see when everyone has 30 min of free time for a meeting.  working hours 8.3-5

# busy_times = [['12:00', '13:00'], ['9:00', '9:30'], ['9:00', '11.30'], ['10:00', '11:00'], ['14:30', '15:00'], ['14:30', '15:30']]


# def team_availability times
#   times.each do |x, y|

#   end
# end

# team_availability busy_times

# (':00', '.0')
def working_time
  schedule = ['8:30', '17:00']
  schedule do |x, y|
  start_time = x.split(//)
  # end_time = y.split(//)
    p start_time
    # p end_time
  end
end

working_time

# not complete