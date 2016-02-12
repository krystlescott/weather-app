require 'weatherboy'
#Method that gets the current weather conditions for the user's location
def get_weather(location)
weatherboy = Weatherboy.new(location)

w = weatherboy.current
condition = w.weather
temp = w.temp_f

puts "It's currently #{temp} and #{condition} in #{location}."
end

puts "What is your location? (Zip Code, City/State, etc.)"
location = gets.chomp
get_weather(location)
