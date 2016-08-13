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

  def is_borrowable_count
    is_borrowable_count = 0
    for book in self.books
      if not book.borrower
        is_borrowable_count += 1
      end
    end
    return is_borrowable_count
  end
end
