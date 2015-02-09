class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  has_one :user, except: [:posts]
  has_many :comments, except: [:post, :user]
end
