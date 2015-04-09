class Venue < ActiveRecord::Base
  has_many :gamevenues
  has_many :games, through: :gamevenues
end
