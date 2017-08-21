class Artist < ActiveRecord::Base
  has_attached_file :avatar, styles: {medium: "300x300", small: "40x40"}, default_url: "banda_foto.png"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_and_belongs_to_many :members, class_name: "User"
  has_many :posts

end
