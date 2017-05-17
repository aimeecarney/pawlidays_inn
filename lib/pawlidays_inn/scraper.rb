require 'pry'

class PawlidaysInn::Scraper

  def get_page(city, state)
    Nokogiri::HTML(open("https://www.bringfido.com/lodging/city/#{city}_#{state}_us/?"))
  end

  def scrape_page
    self.get_page.css("div#results-list").each do |result|
      self.get_page.css(".object-wrapper").each_with_index do |listing, i|
      listing = PawlidaysInn::Listing.new
      listing.name = result.css("div.info a").text
      listing.price = result.css("div.price a .amount").text
      puts "#{i}. #{listing.name} - #{listing.price}"
      end
    end
  end


end
