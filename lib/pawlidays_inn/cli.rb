#Our CLI Controller
require 'pry'

class PawlidaysInn::CLI

  def call
    puts "Welcome to Pawlidays Inn!"
    start
  end

  def start
    puts ""
    puts "Please enter the city you would like to visit with Perro:"
    location_city = gets.chomp
    puts "Please enter the state abbreviation the city is in:"
    location_state = gets.chomp
    puts "Please enter when you need to check in YYYY-MM-DD:"
    date_checkin = gets.chomp
    puts "Please enter when you need to check out YYYY-MM-DD:"
    date_checkout = gets.chomp
    binding.pry
  end



end
