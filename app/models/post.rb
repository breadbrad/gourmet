class Post < ActiveRecord::Base
  belongs_to  :user
  has_many  :comments
  validates :category, :inclusion => { :in => ["Korean", "Japanese", "Chinese", "American"], :message => "You have to choose one of the categories 'Korean, Japanese, Chinese, American'."}
  validates :title, :presence => {  :message => "You have to enter a title"}
end
