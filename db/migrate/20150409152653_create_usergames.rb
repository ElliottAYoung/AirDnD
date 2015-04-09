class CreateUsergames < ActiveRecord::Migration
  def change
    create_table :usergames do |t|
      t.belongs_to :user
      t.belongs_to :game

      t.timestamps null: false
    end
  end
end
