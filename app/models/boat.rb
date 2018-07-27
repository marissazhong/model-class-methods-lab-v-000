class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications

  def self.first_five
    all.limit(5)
  end

  def self.dinghy
    where("length < 20")
  end

  def ship
    where("length >= 20")
  end

  def last_three_alphabetically
    order(name: :desc).limit(3)
  end

  def without_a_captain

  end

  def sailboats

  end

  def with_three_classifications

  end
end
