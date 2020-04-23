class Dog
 attr_accessor :name, :mood, :owner
 @@all = [ ]
 
 def initialize(name, owner)
   @name = name 
   @mood = "nervous"
   @owener = owner 
   @@all << self 
 end
 
 def self.all 
   @@all 
 end 
 
end