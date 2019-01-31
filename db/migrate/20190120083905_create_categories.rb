class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.references :parent, index: true
      t.string :name, null:false
      t.timestamps
    end
  end
end
