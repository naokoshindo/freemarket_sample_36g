class AddBrandToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :brand, :string, null: false
  end
end
