class CreateSolutions < ActiveRecord::Migration[7.1]
  def change
    create_table :solutions do |t|
      t.string :title
      t.string :slug
      t.text :summary
      t.text :description
      t.string :icon
      t.integer :position
      t.boolean :active

      t.timestamps
    end
  end
end
