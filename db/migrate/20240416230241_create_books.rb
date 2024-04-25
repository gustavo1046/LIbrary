class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :subtitle
      t.date :release
      t.integer :publisher_id
      t.integer :genre_id
      t.integer :language_id
      t.integer :author_id
      t.timestamps
    end

    add_foreign_key :books, :publishers, column: :publisher_id
    add_foreign_key :books, :genres, column: :genre_id
    add_foreign_key :books, :languages, column: :language_id
    add_foreign_key :books, :authors, column: :author_id

      add_column :products, :image_url, :string

  end
end
