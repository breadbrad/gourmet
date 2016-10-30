class Post < Activerecord::Base
  belongs_to  :user
  has_many  :comments
  validates :category, :inclusion => {:in => ["Korean", "Japanese", "Chinese", "Western"], :message => "You have to choose one of category 'Korean, Japanese, Chinese, Western'" }
  validates :title, :presence => { :message => "You have to fill in the title"}
  mount_uploader :image, ImageUploader
end

