#Our CLI Controller
class PawlidaysInn::CLI

  def call
    puts "Welcome to Pawlidays Inn!"
    start
  end

  def start

    puts ""
    puts "Please enter the state (spelled out please) you would like to visit with Perro:"
    state = gets.strip
    puts "Please enter the city:"
    city = gets.strip
    puts ""
    puts ""
    results_page = PawlidaysInn::Scraper.new.get_page(state, city)
    puts "Pet Friendly Hotles in #{city}, #{state}:"
    puts ""
    print_listings #print all listings with scrape/listing class

    while input != "exit"
      puts ""
      puts "Which listing would you like more information on? (please enter number)"
      puts ""
      puts "Enter list to see the listings again."
      puts "Enter exit to end the program."
      puts ""
      input = gets.strip
      if input == "list"
        print_listings
      elsif input.to_i > 0
        input.to_i = number
        print_listings(number)
      end
    end


  end

  def print_listings
    PawlidaysInn::Scraper.make_listings
  end

  def print_listing(input)
    PawlidaysInn::Scraper.scrape_listing
  end


end
