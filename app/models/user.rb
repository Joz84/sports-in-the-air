class User < ApplicationRecord
  has_many :favorite_sports
  has_many :messages
  has_many :events
  has_many :players
end
