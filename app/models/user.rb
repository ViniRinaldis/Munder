class User < ActiveRecord::Base
  has_attached_file :avatar, styles: {medium: "300x300", small: "100x100"}, default_url: "perfil.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_many :friendships 
  has_many :friends, through: :friendships
  
  attr_accessor :avatar_file_name, :avatar_content_type

  def authenticate_password?(password)
    self.password == password
  end
  def friends
    User.joins("JOIN friendships ON users.id = friendships.user_id OR users.id = friendships.friend_id").
    where("users.id <> ?",self.id)
  end

  def be_friend_of(friend)
    Friendship.create(user: self, friend: friend)
  end
end
