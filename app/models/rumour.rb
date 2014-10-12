class Rumour < ActiveRecord::Base
  # before_validation on: :create do
  #   if media_content_type == 'application/octet-stream'
  #     mime_type = MIME::Types.type_for(media_file_name)
  #     self.media_content_type = mime_type.first if mime_type.first
  #   end
  # end
  validates :title, presence: true
  validates :description, presence: true
  has_many :user_rumours



  has_attached_file :media, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment :media, :content_type => { :content_type => "image/jpeg" }
  validates_attachment_content_type :media, content_type: [/\Aimage\/.*\Z/, "application/octet-stream"]
  puts :media

  # def set_mime_type(file)
  #   if file.present? && file.content_type == 'application/octet-stream'
  #     mime_type = MIME::Types.type_for(file.original_filename)
  #     file.content_type = mime_type.first.content_type if mime_type.first
  #   end
  #   file
  # end

end
