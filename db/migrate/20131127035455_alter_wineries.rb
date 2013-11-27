class AlterWineries < ActiveRecord::Migration
  def up
    remove_column :wineries, :appellation
    remove_column :wineries, :region
    add_column    :wineries, :appellation_id, :integer, null: false
    add_column    :wineries, :region_id,      :integer, null: false
  end

  def down
    remove_column :wineries, :appellation_id
    remove_column :wineries, :region_id
    add_column    :wineries, :appellation, :string, null: false
    add_column    :wineries, :region,      :string, null: false
  end
end
