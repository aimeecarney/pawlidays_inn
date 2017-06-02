class PawlidaysInn::Listing
  attr_accessor :name, :url, :address, :pet_fee, :pet_policy

  @@all = []


  def initialize(name=nil, address=nil, pet_fee=nil, pet_policy=nil)
    @name = name
    @address = address
    @pet_fee = pet_fee
    @pet_policy = pet_policy
    @@all << self
  end

  def self.new_from_page(listing)
    self.new(
      listing.css("h4").text.strip, listing.css("p.address").text, listing.css("a.petFee").text, listing.css("p.meta").text
    )
  end

  def self.all
    @@all
  end

  def self.delete_all
    @@all.clear
  end

  def self.find(id)
    self.all[id-1]
  end

end
