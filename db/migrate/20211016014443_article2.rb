class Article2 < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.string :description
      t.string :url
      t.string :image
      t.string :category
      t.string :country
      t.datetime :published_at
    end
  end
end
