class Message < ApplicationRecord
  belongs_to :participation
  belongs_to :event

  validates :content, presence: true
end
