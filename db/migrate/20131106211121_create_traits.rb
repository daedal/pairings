class CreateTraits < ActiveRecord::Migration
  def change
    create_table :traits do |t|
      t.string :name,       null: false
      t.string :description

      t.timestamps
    end
  end
end
