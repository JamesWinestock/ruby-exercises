def wet_weather_outfit

  puts "What's the chance of rain? (low / likely)"
  rain_forecast = gets.chomp
  puts "What temperature is it?"
  temperature = gets.chomp.to_i


  if (rain_forecast == 'likely') && (temperature <= 18)
    puts "Take an umbrella and a jacket"
  elsif (rain_forecast == "likely") && (temperature > 18)
    puts "Take an umbrella but not a jacket"
  elsif (rain_forecast == "low") && (temperature <= 18)
    puts "Take a Jacket but not an umbrella"
  else
    puts "It's a beautiful day!"
  end

end

wet_weather_outfit
