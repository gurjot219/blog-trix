class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.text :description
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
