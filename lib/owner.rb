class Owner
  attr_accessor :pets, :name 
  attr_reader :species 
  
  @@all = []
  
  def initialize(species)
    @species = species 
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end
    
end