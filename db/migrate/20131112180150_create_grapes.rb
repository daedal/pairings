class CreateGrapes < ActiveRecord::Migration
  def change
    create_table :grapes do |t|
      t.string :name,    null:false
      t.string :variety, null:false

      t.timestamps
    end
  end
end
