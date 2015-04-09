class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :email
      t.string  :password_hash
      t.string  :avatar_url
      t.text    :bio
      t.string  :preferred_experience
      t.string  :preferred_version
      t.string  :preferred_classes
      t.string  :preferred_races
      t.string  :preferred_alignments
      t.integer :preferred_level

      t.timestamps null: false
    end
  end
end
