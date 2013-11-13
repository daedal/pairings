class CreateCheeses < ActiveRecord::Migration
  def change
    create_table :cheeses do |t|
      t.string  :name,              null: false
      t.string  :country_of_origin
      t.string  :region
      t.string  :milk
      t.string  :texture_type
      t.string  :color
      t.integer :age

      t.timestamps
    end
  end
end
