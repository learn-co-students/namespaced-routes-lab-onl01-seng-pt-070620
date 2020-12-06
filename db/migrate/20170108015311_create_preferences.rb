class CreatePreferences < ActiveRecord::Migration
    def change
      create_table :preferences do |t|
        t.boolean :allow_create_artists, default: false
        t.boolean :allow_create_songs, default: true
  
        t.timestamps null: false
      end
    end
  end