class AddColumns3Items < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :size_id
  end
end
