class Division < ApplicationRecord
  belongs_to :tournament
end

#! Can query tournaments for users. Proof: Division.first.tournament.users