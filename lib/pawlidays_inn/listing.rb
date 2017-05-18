class PawlidaysInn::Listing
  attr_accessor :name, :price

  @@all = []


  def initialize(name=nil, address=nil, pet_fee=nil)
    @name = name
    @price = price
    @pet_fee = pet_fee
    @@all << self
  end

  def self.all
    @@all
  end


end
