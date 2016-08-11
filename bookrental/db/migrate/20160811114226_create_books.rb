class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :field
      t.string :bookname
      t.string :author
      t.string :publisher
      t.integer :quantity
      t.string :isbn

      t.timestamps null: false
    end
  end
end
