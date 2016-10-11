class User < ActiveRecord::Base
  has_many  :posts
  has_many  :comments
  validates :username, :presence  => {  :message  => "ID needs to be entered" }
  validates :username, :uniqueness => { :message => "ID you provided already exists"}
  validates :password,  :length => {  :minimum => 6, :too_short => "At least 6 numbers be feeded" } 
end
