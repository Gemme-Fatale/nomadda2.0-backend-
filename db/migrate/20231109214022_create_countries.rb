class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :prime_destination
      t.string :primary_language
      t.string :known_for
      t.string :climate
      t.float :nightlife
      t.text :image

      t.timestamps
    end
  end
end
