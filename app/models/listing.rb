class Listing < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "200x>", thumb: "100x100>" }, default_url: "default.jpg" # 200x means fixed width and proport. height
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
