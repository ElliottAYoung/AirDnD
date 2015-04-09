class Game < ActiveRecord::Base
  has_many :gamevenues
  had_many :venues, through: :gamevenues
  has_many :usergames
  has_many :users, through: :usergames
  belongs_to :users
end
