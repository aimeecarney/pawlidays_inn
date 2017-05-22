#Our CLI Controller
class PawlidaysInn::CLI

  def call
    puts "Welcome to Pawlidays Inn!"
    start
  end

  def start

    puts ""
    puts "Please enter the state (spelled out) you would like to visit with Perro:"
    state = gets.strip
    puts "Please enter the city:"
    city = gets.strip
    puts ""
    puts ""
    url = "http://hotels.petswelcome.com/#{state}/#{city}/"
    results_page = PawlidaysInn::Scraper.get_page(url)
    puts "Pet Friendly Hotels in #{city.capitalize}, #{state.capitalize}:"
    puts ""


    print_listings #print all listings with scrape/listing class

      puts ""
      puts "Which listing would you like more information on? (please enter number)"
      puts ""
      while input != "exit"
      input = gets.strip
        if input.to_i > 0
          input.to_i = number
          print_listings(number)
        else
          puts "Invalid input, please enter a number - to see more information on a listing, list - to see the entire listings again or exit - to leave the program."
        puts ""
        end
      input = gets.strip
      if input == "list"
        print_listings
      elsif input = "exit"
        puts "Goodbye!"
      end
    end


  end

  def print_listings
    PawlidaysInn::Scraper.scrape_listings
  end

  def print_listing(input)
    PawlidaysInn::Scraper.scrape_listing
  end


end
