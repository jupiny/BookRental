class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.belongs_to :book_info, index: true
      t.boolean :is_damaged
      t.boolean :is_lost
      t.belongs_to :user, index: true, :default => '', :null => true

      t.timestamps null: false
    end
  end
end
