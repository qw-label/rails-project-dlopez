class Character < ApplicationRecord
  validates :name, presence: true
  validates :id, uniqueness: true

  # Associations
  # Jutsus
  has_many :jutsus, dependent: :destroy
  # Clans
  has_many :character_clans, dependent: :destroy
  has_many :clans, through: :character_clans

end
