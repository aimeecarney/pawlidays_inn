require 'pry'

class PawlidaysInn::Scraper

  def get_page(city, state)
    Nokogiri::HTML(open("https://www.airbnb.com/s/#{URI.encode(city)}—-#{URI.encode(state)}-—United-States/homes?allow_override%5B%5D=&hosting_amenities%5B%5D=12&s_tag=EVviYajS"))
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
