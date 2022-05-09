class Api::V1::PostSerializer < ActiveModel::Serializer
  type :post

  attributes(
    :id,
    :author,
    :title,
    :body,
    :comments
  )
end
