class PawlidaysInn::Listing
  attr_accessor :name, :price, :address, :url, :description

  @@all = []


  def initialize(name=nil, price=nil, address=nil, url=nil, description=nil)
    @name = name
    @price = price
    @address = address
    @url = url
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end


end
