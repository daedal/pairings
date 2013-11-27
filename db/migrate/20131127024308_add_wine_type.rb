class AddWineType < ActiveRecord::Migration
  def up
    add_column :wines, :category_type, :string, null: false
  end

  def down
    remove_column :wines, :category_type
  end
end
