class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :location
      t.string :country
      t.string :main_attraction
      t.date :start_date
      t.date :end_date
      t.integer :travelers
      t.text :trip_details
      t.boolean :family_friendly
      t.text :image
      t.integer :visitable_id
      t.string :visitable_type

      t.timestamps
    end
  end
end
