class Animal < ApplicationRecord
  validates :name, :species, presence: true
  validates :name, uniqueness: true

  def intro
    "#{self.name} the #{self.species}"
  end
end
