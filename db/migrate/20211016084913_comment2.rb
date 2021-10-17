class Comment2 < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :user
      t.text :comment
    end
  end
end
