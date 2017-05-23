class PawlidayInn::Listing
  attr_accessor :name, :url, :address, :pet_fee, :pet_policy

  @@all = []


  def initialize(name=nil, url=nil, address=nil, pet_fee=nil, pet_policy=nil)
    @name = name
    @url = url
    @address = address
    @pet_fee = pet_fee
    @pet_policy = pet_policy
    @@all << self
  end

  def self.new_from_page(listing)
    self.new(
      listing.css("h4").text.strip, listing.css("href").text, listing.css("p.address").text, listing.css("apetFee").text, listing.css("span").text
    )
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

end
