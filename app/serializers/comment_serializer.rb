class CommentSerializer < ActiveModel::Serializer

  attributes :id, :body
  has_one :user, except: [:comments, :posts]
  has_one :post, except: [:comments, :user]

end
