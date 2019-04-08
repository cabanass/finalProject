class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :author
      t.string :category
      t.string :headline
      t.string :byline
      t.string :leadParagraph
      t.string :body

      t.timestamps
    end
  end
end
