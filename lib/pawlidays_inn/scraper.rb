require 'pry'

class PawlidaysInn::Scraper

  def get_page(state, city)
    Nokogiri::HTML(open("http://hotels.petswelcome.com/#{state}/#{city}/"))
  end


  def self.scrape_page
    self.get_page.css("div#featuredWrapper").each_with_index do |listing, i|
    listing = PawlidaysInn::Listing.new
    listing.name = result.css("h4 a").text
    listing.address = result.css("p.address").text
    listing.pet_fee = result.css("a.petFee").text
    puts "#{i}. #{listing.name} - #{listing.price}"
    end
  end


end
