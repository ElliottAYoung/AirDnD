class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer  :dungeon_master
      t.string   :game_name
      t.string   :game_system
      t.string   :level_range
      t.text     :description
      t.integer  :minimum_number_of_players
      t.integer  :maximum_number_of_players
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
