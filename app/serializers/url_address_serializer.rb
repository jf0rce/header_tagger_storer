class UrlAddressSerializer < ActiveModel::Serializer
  attribute :url, root: true

  has_many :header_one_tags
  has_many :header_two_tags
  has_many :header_three_tags
  has_many :anchor_tags
end
