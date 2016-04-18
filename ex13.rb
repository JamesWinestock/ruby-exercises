aus_rugby_teams = ["Waratahs", "Brumbies", "Rebels", "Reds", "Force"]


  puts "<select>"
  aus_rugby_teams.each do |team|
  puts "<option name='#{team}'>#{team}</option>"
end
puts "</select>"
