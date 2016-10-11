class Comment < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :post
  validates :content, :presence =>  { :message => "You cannot enter nothing"}
end
