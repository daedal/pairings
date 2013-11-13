class CreateWineries < ActiveRecord::Migration
  def change
    create_table :wineries do |t|
      t.string :name,        null:false
      t.string :appellation, null:false
      t.string :region,      null:false

      t.timestamps
    end
  end
end
