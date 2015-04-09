class CreateGamevenues < ActiveRecord::Migration
  def change
    create_table :gamevenues do |t|
      t.belongs_to :game
      t.belongs_to :venue

      t.timestamps null: false
    end
  end
end
