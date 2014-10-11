class Rumour < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  has_many :user_rumours



  has_attached_file :media, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment :media,
    :content_type => { :content_type => "image/jpeg" }

end
