class User < ActiveRecord::Base
  has_attached_file :avatar, styles: {medium: "300x300", small: "40x40"}, default_url: "perfil.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_many :friendships 
  has_many :friends, through: :friendships
  
  def authenticate_password?(password)
    self.password == password
  end

  def be_friend_of(friend)
    Friendship.create(user: self, friend: friend)
  end
end
