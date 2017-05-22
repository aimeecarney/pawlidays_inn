class PawlidaysInn::Listing
  attr_accessor :name, :price

  @@all = []


  def initialize(name=nil, url=nil, address=nil, pet_fee=nil, pet_policy=nil)
    @name = name
    @url = url
    @address = address
    @pet_fee = pet_fee
    @pet_policy = pet_policy
  end

  def self.all
    @@all
  end


end
