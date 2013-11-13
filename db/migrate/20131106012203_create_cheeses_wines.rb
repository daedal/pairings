class CreateCheesesWines < ActiveRecord::Migration
  def change
    create_table :cheeses_wines do |t|
      t.integer :cheese_id
      t.integer :wine_id

      t.timestamps
    end
  end
end
