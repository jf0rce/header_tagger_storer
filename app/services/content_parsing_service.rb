class ContentParsingService
  def initialize(url_address)
    @url_address = url_address
    @url = url_address.url
  end

  def parse!
  end

  private

  def parse_header_tags(header_level)
  end
  
  def parse_anchor_tags
  end
end
