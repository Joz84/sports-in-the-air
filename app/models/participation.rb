class Participation < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_many :messages

  validates :status, presence: true
end
