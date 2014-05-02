class AddWineBottlePhoto < ActiveRecord::Migration
  def up
    add_attachment :wines, :photo
  end

  def down
    remove_attachment :wines, :photo
  end
end
