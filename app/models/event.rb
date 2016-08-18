class Event < ApplicationRecord

  belongs_to :user
  # belongs_to :place
  belongs_to :sport
  has_many :participations, dependent: :destroy
  has_many :messages

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :required_level, presence: true
  validates :status, presence: true
  validates :required_material, presence: true
  validates :sport, presence: true
  validates :date, presence: true
  validates :address, presence: true
  validates :number_of_players, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
