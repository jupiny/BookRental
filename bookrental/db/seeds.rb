# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


books_xlsx = Roo::Excelx.new("app/assets/data/books.xlsx").sheet(0)

(3..books_xlsx.last_row).each do |i|
    row = books_xlsx.row(i)
    Book.create(
        field: row[0],
        bookname: row[1],
        author: row[2],
        publisher: row[3],
        quantity: row[4].to_i,
        isbn: row[5],
    )
