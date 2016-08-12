class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.belongs_to :book_info, index: true
      t.boolean :is_damaged
      t.boolean :is_lost
      t.boolean :is_loaned

      t.timestamps null: false
    end
  end
end
