class UrlAddressesController < ApplicationController
  def parse
    @url_address = UrlAddress.create!(accepted_params)
    head :ok
  end

  def index
    @url_addresses = UrlAddress.all
    render @url_addresses
  end

  private

  def accepted_params
    params.require(:url_address).permit(:url)
  end
end
