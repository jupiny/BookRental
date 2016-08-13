class BookInfo < ActiveRecord::Base
  has_many :books, dependent: :destroy

  def is_borrowable
    for book in self.books
      if not book.borrower
        return true 
      end
    end
    return false
  end

  def get_borrowable_count
    is_borrowable_count = 0
    for book in self.books
      if not book.borrower
        is_borrowable_count += 1
      end
    end
    return is_borrowable_count
  end

  def get_borrowable_book
    for book in self.books
      if not book.borrower
        return book
      end
    end
    return nil
  end
end
