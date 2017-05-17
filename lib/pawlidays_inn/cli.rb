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

    results_page = PawlidaysInn::Scraper.new.get_page(city, state)
    print_listing #print all listings with scrape/listing class

    while input != "exit"
      puts ""
      puts "Which listing would you like more information on? (please enter number)"
      puts ""
      puts "Enter list to see the listings again."
      puts "Enter exit to end the program."
      puts ""
      input = gets.strip
      if input == "list"
        print_listing
      elsif input.to_i > 0
        #print listing chosen from number on list
      end
    end


  end

  def print_listing
    PawlidaysInn::Scraper.scrape_page
  end


end
