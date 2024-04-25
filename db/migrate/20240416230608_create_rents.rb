class CreateRents < ActiveRecord::Migration[7.1]
  def change
    create_table :rents do |t|
      t.string :name
      t.integer :age
      t.date :devolutionDate
      t.integer :client_id
      t.integer :book_id
      t.timestamps
    end

    add_foreign_key :rents, :client, column: :client_id
    add_foreign_key :rents, :book, column: :book_id
  end
end
