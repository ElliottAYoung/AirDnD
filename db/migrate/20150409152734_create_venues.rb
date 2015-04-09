class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string  :name
      t.string  :street_address
      t.string  :street_address_2
      t.string  :city
      t.string  :state
      t.string  :zipcode
      t.string  :special_instructions
      t.integer :latitude
      t.integer :longitude
      t.time    :opening_time
      t.time    :closing_time

      t.timestamps null: false
    end
  end
end
