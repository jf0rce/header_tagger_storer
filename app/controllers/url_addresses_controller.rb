class UrlAddressesController < ApplicationController
  def parse
    @url_address = UrlAddress.create!(accepted_params)
    head :ok
  end

  private

  def accepted_params
    params.require(:url).permit(:address)
  end
end
