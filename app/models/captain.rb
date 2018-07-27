class Captain < ActiveRecord::Base
  has_many :boats
  def self.catamaran_operators
    where(boat: {classifications: "Sailboat"})
  end

  def self.sailors
    where(boat: {classifications: "Sailboat"})
  end

  def self.talented_seafarers

  end

  def non_sailors

  end
end
