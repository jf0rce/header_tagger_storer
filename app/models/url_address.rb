class UrlAddress < ApplicationRecord
  has_many :anchor_tags, dependent: :destroy

  has_many :header_one_tags, dependent: :destroy
  has_many :header_two_tags, dependent: :destroy
  has_many :header_three_tags, dependent: :destroy

  accepts_nested_attributes_for :anchor_tags, :header_one_tags, :header_two_tags, :header_three_tags, allow_destroy: true

  before_create :parse_content

  def parse_content
    ContentParsingService.new(self).parse!
  end
end
