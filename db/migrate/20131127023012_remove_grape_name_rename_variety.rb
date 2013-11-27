class RemoveGrapeNameRenameVariety < ActiveRecord::Migration
  def up
    remove_column :grapes, :name
    rename_column :grapes, :variety, :varietal
  end

  def down
    add_column    :grapes, :name, :string, null: false
    rename_column :grapes, :varietal, :variety
  end
end
