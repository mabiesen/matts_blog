class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :summary
      t.text :content_html

      t.timestamps
    end
    add_index :blogs, :title, unique: true
  end
end
