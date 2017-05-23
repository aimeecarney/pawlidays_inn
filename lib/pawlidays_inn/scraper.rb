class PawlidaysInn::Scraper

  def self.get_page(url)
    @page = Nokogiri::HTML(open("#{url}"))
    #test url: http://hotels.petswelcome.com/illinois/chicago/
    #"http://hotels.petswelcome.com/#{state}/#{city}/"
  end

  def self.scrape_page
    @page.search("div.featured.lodging")
  end

  def self.make_listings
    scrape_page.each do |listing|
      PawlidaysInn::Listing.new_from_page(listing)
    end
  end

end
