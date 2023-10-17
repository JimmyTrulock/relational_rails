class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :authors, :boolean
  end
end
