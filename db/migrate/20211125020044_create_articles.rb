class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.integer :rating
      t.text :title
      t.text :author
      t.text :vendor
      t.text :price
      t.text :description

      t.timestamps
    end
  end
end
