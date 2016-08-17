class Event < ApplicationRecord
  belongs_to :user
  belongs_to :place
  belongs_to :sport
  has_many :participations
  has_many :messages

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :required_level, presence: true
  validates :status, presence: true
  validates :required_material, presence: true
  validates :sport, presence: true
  validates :date, presence: true

end
