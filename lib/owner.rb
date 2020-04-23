class Owner
 attr_accessor :species, :name 
 
 @@all = [ ]
 
 def initialize (name, species = 'human')
   @name = name
   @species = species
   @@all << self 
 end
 
 def say_species 
   "I am a #{species}"
 end
 
 def self.all
   @@all
 end
 
 def self.reset_all
   @@all = Array.new 
 end
 
 def cats 
  
 
 
 
end