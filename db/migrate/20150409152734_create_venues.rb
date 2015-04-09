class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|

      t.timestamps null: false
    end
  end
end
