class Captain < ActiveRecord::Base
  has_many :boats
  def self.catamaran_operators
    all
  end

  def self.sailors
    where(boat: {classification: "Sailboat"})

    includes(:classifications).where(classifications: {name: "Sailboat"})

  end

  def self.talented_seafarers

  end

  def non_sailors

  end
end
