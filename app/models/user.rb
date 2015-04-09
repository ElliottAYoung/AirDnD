class User < ActiveRecord::Base
  has_many :usergames
  has_many :games, through: :usergames
  has_many :games, through: :usergames, foreign_key: :dungeon_master
end
