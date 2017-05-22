class PawlidaysInn::Scraper

  def self.get_page(state, city)
    Nokogiri::HTML(open("http://hotels.petswelcome.com/#{state}/#{city}/"))
    #test url: http://hotels.petswelcome.com/illinois/chicago/
    #"http://hotels.petswelcome.com/#{state}/#{city}/"
  end

  #
  def self.scrape_page
    self.get_page.css("h4 a")
  end

  def self.make_listings
    self.scrape_page.each_with_index do |listing, i|
      listing = PawlidaysInn::Listing.new
      listing.name = self.get_page.css("h4 a").text
      puts ""
      puts "#{i}. #{listing.name}"
    end
  end

  def self.scrape_listing(input)
    input = input.to_i

    self.get_page.css("featured lodging-#{input} lodging").each do |listing|
      listing.url = listing.css("a")
      listing.address = listing.css("p.address").text
      listing.pet_fee = listing.css("a.petFee").text
      listing.pet_policy = listint.css("span").text
      end
        puts ""
        puts "----------- #{listing.name} -----------"
        puts ""
        puts "Hotel URL:          #{listing.url}"
        puts "Address:            #{listing.address}"
        puts "Pet Fee:            #{listing.pet_fee}"
        puts ""
        puts "---------------Pet Policy--------------"
        puts ""
        puts "#{listing.pet_policy}"
        puts ""
  end


end
