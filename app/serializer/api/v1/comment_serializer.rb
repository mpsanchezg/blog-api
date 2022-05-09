class Api::V1::CommmentSerializer < ActiveModel::Serializer
  type :comment

  attributes(
    :id,
    :author,
    :post_id,
    :body
  )
end
