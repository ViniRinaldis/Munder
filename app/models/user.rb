class User < ActiveRecord::Base
  has_attached_file :avatar, styles: {medium: "300x300", small: "100x100"}, default_url: "default.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


  def authenticate_password?(password)
    self.password == password
  end
end
