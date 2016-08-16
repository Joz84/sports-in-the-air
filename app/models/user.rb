class User < ApplicationRecord
  has_many :favorite_sports
  has_many :events
  has_many :participations
  has_many :sports, through: :favorite_sports

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :login, presence: true
  validates :login, uniqueness: true
  validates :password, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :status, presence: true
  validates :sports, presence: true
end
