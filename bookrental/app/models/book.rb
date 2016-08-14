class Book < ActiveRecord::Base
  belongs_to :book_info
  belongs_to :borrower, :class_name => "User", :foreign_key => :user_id

  def is_borrowable
    if not self.borrower and not self.is_lost
      return true 
    end
    return false
  end

  def is_damaged_str
    if self.is_damaged
      return "O"
    end
    return "X"
  end

  def is_lost_str
    if self.is_lost
      return "O"
    end
    return "X"
  end
end
