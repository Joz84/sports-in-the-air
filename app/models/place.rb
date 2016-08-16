class Place < ApplicationRecord
  has_many :events

  # presence
  validates :name, presence: true
  validates :address, presence: true
  validates :adress, uniqueness: true
end
