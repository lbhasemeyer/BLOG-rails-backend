class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name
  has_many :posts, except: [:user]
  has_many :comments, except: [:post, :user]
end
