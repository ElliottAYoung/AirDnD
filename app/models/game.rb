class Game < ActiveRecord::Base
  has_many :gamevenues
  had_many :venues, through: :gamevenues
  has_many :usergames
  has_many :users, through: :usergames
  belongs_to :user

  validates :game_name,                 presence: true
  validates :game_system,               presence: true
  validates :level_range,               presence: true
  validates :description,               presence: true
  validates :minimum_number_of_players, presence: true
  validates :start_time,                presence: true
  validates :end_time,                  presence: true
end
