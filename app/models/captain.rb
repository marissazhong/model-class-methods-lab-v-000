class Captain < ActiveRecord::Base
  has_many :boats
  def self.catamaran_operators
    includes(:boats).where(boats: {classifications: "Sailboat"})
  end

  def self.sailors
    includes(:boats).where(boats: {classifications: "Sailboat"})
  end

  def self.talented_seafarers

  end

  def non_sailors

  end
end
