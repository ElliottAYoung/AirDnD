class Gamevenue < ActiveRecord::Base
  belongs_to :game
  belongs_to :venue
end
