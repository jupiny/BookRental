class CreateBookInfos < ActiveRecord::Migration
  def change
    create_table :book_infos do |t|
      t.string :field
      t.string :bookname
      t.string :author
      t.string :publisher
      t.string :isbn

      t.timestamps null: false
    end
  end
end
