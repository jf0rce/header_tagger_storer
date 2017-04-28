class UrlAddress < ApplicationRecord
  has_many :anchor_tags, dependent: :destroy

  has_many :header_one_tags, dependent: :destroy
  has_many :header_two_tags, dependent: :destroy
  has_many :header_three_tags, dependent: :destroy

  before_create :parse_content

  def parse_content
    ContentParsingService.new(:url).parse!
  end
end
