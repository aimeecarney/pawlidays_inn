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
    city = gets.strip
    puts "Please enter the state abbreviation the city is in:"
    state = gets.strip

    PawlidaysInn::Scraper.new.get_page(city, state)

    print_listings #print all listings with scrape/listing class

    while input != "exit"
      puts ""
      puts "Which listing would you like more information on?"
      puts ""
      puts "Enter list to see the listings again."
      puts "Enter exit to end the program."
      puts ""
      input = gets.strip
      if input == "list"
        print_listings
      elsif input.to_1 > 0
        #print listing chosen from number on list
      end
    end


  end

  def print_listing

  end

  # AIR BNB URL https://www.airbnb.com/s/#{city}-#{state}/homes?adults=2&allow_override%5B%5D=&amenity=pet-friendly&checkin=#{checkin}&checkout=#{checkout}&gclid=CjwKEAjw9MrIBRCr2LPek5-h8U0SJAD3jfhtl9hkPiVSqmTAhWk03OtJQFsQedru2tQUUNu2WgYTgBoCqBzw_wcB&guests=2&hosting_amenities%5B%5D=12&in_vr=1&room_types%5B%5D=Entire%20home%2Fapt&s_tag=pkYHg0Tf

end
