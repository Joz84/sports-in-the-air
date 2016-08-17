class Sport < ApplicationRecord
  has_attachment :photo
  has_many :events, inverse_of: :sport
  has_many :favorite_sports
  has_many :users, through: :favorite_sports

  validates :name, presence: true
  validates :name, uniqueness: true
end
