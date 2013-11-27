class CreateAppellations < ActiveRecord::Migration
  def change
    create_table :appellations do |t|
      t.string  :name,      null: false
      t.integer :region_id, null: false

      t.timestamps
    end
  end
end
