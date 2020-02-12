class Event < ApplicationRecord
  belongs_to :user
  belongs_to :tournament
  has_many :divisions, through: :tournaments
end
