class CommentSerializer < ActiveModel::Serializer

  attributes :id, :body
  has_one :user, except: [:comments]
  has_one :post, except: [:comments]

end
