class Event < ApplicationRecord
  belongs_to :user
  belongs_to :place
  belongs_to :sport
end
