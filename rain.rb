name = "little one"
rain_percentage = 0.8
temperature_in_c = 26
 
likely_to_rain = rain_percentage > 0.30
sun_is_dangerous = temperature_in_c >= 26
 
puts "Hello, #{name}, with a rain chance of #{rain_percentage * 100}% and a temperature of #{temperature_in_c}C we recommend that you " + (likely_to_rain ? "take an umbrella" : "enjoy this rain-free day") +
"#{sun_is_dangerous ? ' and watch out for heat stroke!' : ' and fine weather.'}"