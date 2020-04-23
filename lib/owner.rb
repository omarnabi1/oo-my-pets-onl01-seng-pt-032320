class Owner
  attr_reader :species, :name


  @@all = Array.new

  def initialize(name,species = 'human')
    @name= name
    @species = species
    @@all.push(self)


  end

  def say_species
   "I am a #{species}."
  end

  def self.all

    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = Array.new
  end

  def cats
    Cat.all.select do |cats|
      cats.owner == self
    end
  end

  def dogs
    Dog.all.select do |dogs|
      dogs.owner == self
    end
  end

  def buy_cat(add_cat)
    new_cat = Cat.new(add_cat,self)
    @@all.push(new_cat)
    @@all
  end



   def buy_dog(add_dog)
    new_dog = Dog.new(add_dog,self)
    @@all.push(new_dog)
    @@all
  end

  def walk_dogs

    Dog.all.select do |dogs|
      dogs.mood = 'happy'
    end
  end

  def feed_cats
    Cat.all.select do |cats|
      cats.mood = 'happy'
    end
  end

  def sell_pets

    new_array = cats + dogs
    new_array.each do |pet|
      pet.mood = 'nervous'
      pet.owner = nil
    end

  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end