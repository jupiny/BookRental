class Book < ActiveRecord::Base
  belongs_to :book_info
  belongs_to :borrower, :class_name => "User", :foreign_key => :user_id

  def is_borrowable_str
    if self.borrower
      return "대출불가"
    end
    return "대출가능"
  end
end
