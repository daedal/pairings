class CreateCheesesTraits < ActiveRecord::Migration
  def change
    create_table :cheeses_traits do |t|
      t.integer :cheese_id
      t.integer :trait_id

      t.timestamps
    end
  end
end
