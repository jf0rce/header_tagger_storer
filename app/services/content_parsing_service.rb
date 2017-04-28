require 'open-uri'

class ContentParsingService

  def initialize(url_address)
    @url_address = url_address
    @url = url_address.url
  end

  def parse!
    @page = Nokogiri::HTML(open(@url))
    @url_address.header_one_tags_attributes = parse_tags "h1"
    @url_address.header_two_tags_attributes = parse_tags "h2"
    @url_address.header_three_tags_attributes = parse_tags "h3"
    @url_address.anchor_tags_attributes = parse_tags "a"
  end

  private

  def parse_tags(tag)
    @page.xpath("//#{tag}").map { |tag| { content: tag.content } }
  end
end
