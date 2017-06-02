#Our CLI Controller
class PawlidaysInn::CLI

  def call
    puts ""
    puts "Welcome to Pawlidays Inn!"
    collect_city_state
    list_listings
  end

  def collect_city_state

    puts ""
    puts "Please enter the state (spelled out) you would like to visit with Fido:"
    @state = gets.strip.tr(' ', '-')
    puts "Please enter the city:"
    @city = gets.strip.tr(' ', '-')
    puts ""
    puts ""
    url = "http://hotels.petswelcome.com/#{@state}/#{@city}/"
    results_page = PawlidaysInn::Scraper.get_page(url)
    PawlidaysInn::Listing.delete_all
    PawlidaysInn::Scraper.make_listings

  end

  def list_listings

    puts "Pet Friendly Hotels in #{@city.capitalize}, #{@state.capitalize}:"
    puts ""

    PawlidaysInn::Listing.all.each.with_index(1) do |listing, i|
        puts "#{i}. #{listing.name}"
        end

    puts ""
    puts "Which listing would you like more information on? (please enter number)"
    puts ""
    input = gets.strip
    input = input.to_i
    if !input.between?(1, PawlidaysInn::Listing.all.count)
      puts "Invalid entry, please enter the number next to the listing you would like more informatin on."
      puts ""
      sleep(3)
      list_listings
    else
    listing = PawlidaysInn::Listing.find(input.to_i)
    end

    puts ""
    puts "----------- #{listing.name} -----------"
    puts ""
    puts "Address:"
    puts "#{listing.address}"
    puts ""
    puts "Pet Fee: #{listing.pet_fee}"
    puts ""
    puts "--------------- Pet Policy --------------"
    puts ""
    puts "#{listing.pet_policy}"
    puts ""

    puts ""
    puts "Would you like to see another listing? (Y/N) or Search New City/State (S)"
    puts ""
    input = gets.strip.upcase
    if input == "Y"
        list_listings
      elsif input == "S"
        collect_city_state
        list_listings
      else
        puts ""
        puts "Thank you for visiting, hope you and Fido found a place to stay!"
        exit
      end
  end

end
