class CreateBlogPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :blog_posts do |t|
      t.references :blog_category, null: false, foreign_key: true
      t.string :title
      t.string :slug
      t.text :excerpt
      t.text :content
      t.integer :status
      t.string :reading_time
      t.datetime :published_at
      t.integer :position
      t.boolean :active

      t.timestamps
    end
  end
end
