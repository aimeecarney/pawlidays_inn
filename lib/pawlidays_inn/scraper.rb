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

  # def self.make_listing(input)
  #   @page.css("div.featured.lodging-#{input}.lodging").each do |listing|
  #     listing.url = listing.css("a")
  #     listing.address = listing.css("p.address").text
  #     listing.pet_fee = listing.css("a.petFee").text
  #     listing.pet_policy = listint.css("span").text
  #
  #     puts ""
  #     puts "----------- #{listing.name} -----------"
  #     puts ""
  #     puts "Hotel URL:          #{listing.url}"
  #     puts "Address:            #{listing.address}"
  #     puts "Pet Fee:            #{listing.pet_fee}"
  #     puts ""
  #     puts "---------------Pet Policy--------------"
  #     puts ""
  #     puts "#{listing.pet_policy}"
  #     puts ""
  #   end
  # end


end
