class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.integer :price
      t.text :description
      t.string :image
      t.references :category, foreign_key: true

      t.timestamps
    end
    add_index :items, :price
  end
end
