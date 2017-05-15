require 'pry'

class PawlidaysInn::Scraper

  def get_page(city, state)
    bring_fido = Nokogiri::HTML(open("https://www.bringfido.com/lodging/city/#{city}_#{state}_us/?"))

    bring_fido.css("#results-list").each do |result|
      listing = Listing.new
      listing.title = result.css("data-name")
      listing.price = result.css("")
    end


    binding.pry
  end

#  def scrape_page
#    self.get_page.css("")
#  end
#
#  def make_listings
#    scrape_page_index.each do |r|
#      WorldsBestRestaurants::Restaurant.new_from_index_page(r)
#    end
#  end


end
