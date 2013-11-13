class CreateTraitsWines < ActiveRecord::Migration
  def change
    create_table :traits_wines do |t|
      t.integer :wine_id
      t.integer :trait_id

      t.timestamps
    end
  end
end
