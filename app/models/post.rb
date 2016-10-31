class Post < ActiveRecord::Base
  belongs_to  :user
  has_many  :comments
  validates :category, :inclusion => { :in => ["Korean","Japanese","Chinese","Western"], :message => "choose one of them: Korean, Japanese, Chinese, Western " }
  validates :title, :presence => { :message => "You have to type the title." }
  mount_uploader :image, ImageUploader
end
