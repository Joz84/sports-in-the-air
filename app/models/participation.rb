class Participation < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_many :messages

  validates :status, presence: true

  def self.give_status(event)
    if event.participations.count >= event.number_of_players
      "Pending"
    else
      "Attending"
    end
  end
end
