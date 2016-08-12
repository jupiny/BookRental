class Book < ActiveRecord::Base
  belongs_to :book_info
  belongs_to :borrower, :class_name => "User", :foreign_key => :user_id
end
