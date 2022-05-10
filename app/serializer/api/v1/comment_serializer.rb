class Api::V1::CommentSerializer < ActiveModel::Serializer
  type :comment

  attributes(
    :id,
    :author,
    :post_id,
    :body
  )
end
