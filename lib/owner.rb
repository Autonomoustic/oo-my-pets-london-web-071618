class Owner
  # code goes here
  
  @@all = []
  
  attr_reader :species
  attr_accessor :name, :pets
  
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats=> []}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.count  
  end
  
  def say_species
    return "I am a #{species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    
    @@all << fish
  end
end