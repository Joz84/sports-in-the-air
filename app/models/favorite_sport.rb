class FavoriteSport < ApplicationRecord
  belongs_to :user
  belongs_to :sport

  validates :sport, presence: true
  validates :level, presence: true
end
