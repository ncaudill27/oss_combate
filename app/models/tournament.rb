class Tournament < ApplicationRecord
  has_many :events
  has_many :divisions
  has_many :users, through: :events
end

#? Would creating instance methods here or in Division model
#? allow fewer queries?