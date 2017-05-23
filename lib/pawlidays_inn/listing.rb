class PawlidaysInn::Listing
  attr_accessor :name, :url, :address, :pet_fee, :pet_policy

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_from_page(listing)
    self.new(
      listing.css("h4").text
    )
  end

  def self.all
    @@all
  end

  def url

  end

  def address

  end

  def pet_fee

  end

  def pet_policy

  end


end
