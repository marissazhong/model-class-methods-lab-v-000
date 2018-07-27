class Captain < ActiveRecord::Base
  has_many :boats
  def self.catamaran_operators
    includes(:boats :classifications).where(classifications: {name: "Catamaran"})
  end

  def self.sailors
    includes(:boats).where(boats: {classifications: {name: "Catamaran"}})
  end

  def self.talented_seafarers

  end

  def non_sailors

  end
end
