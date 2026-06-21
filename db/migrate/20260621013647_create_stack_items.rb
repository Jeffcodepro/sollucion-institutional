class CreateStackItems < ActiveRecord::Migration[7.1]
  def change
    create_table :stack_items do |t|
      t.string :name
      t.string :slug
      t.string :category
      t.text :description
      t.string :examples
      t.integer :position
      t.boolean :active

      t.timestamps
    end
  end
end
