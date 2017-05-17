class PawlidaysInn::Listing
  attr_accessor :name, :price

  @@all = []


  def initialize(name=nil, price=nil)
    @name = name
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end


end
