class FavoriteSport < ApplicationRecord
  belongs_to :user
  belongs_to :sport

  validates :level, presence: true
end
