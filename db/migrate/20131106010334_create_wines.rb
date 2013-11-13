class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.integer :vintage,            null: false
      t.integer :winery_id,          null: false
      t.integer :grape_id,           null: false
      t.integer :alcohol_percentage
      t.integer :serving_temperature
      t.integer :sweetness
      t.integer :acidity
      t.integer :tanin
      t.integer :fruit
      t.integer :body

      t.timestamps
    end
  end
end
