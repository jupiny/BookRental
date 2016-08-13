class BookInfo < ActiveRecord::Base
  has_many :books, dependent: :destroy

  def is_borrowable_str
    for book in self.books
      if not book.borrower
        return "대출가능"
      end
    end
    return "대출불가"
  end
end
