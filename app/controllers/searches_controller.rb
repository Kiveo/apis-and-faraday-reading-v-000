class SearchesController < ApplicationController

  def search
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['KLDTZ0SWOTENW0EFWBNZ1E5UKLVKTOW4UQXQLM0IGMKIFP3I'] = client_id
      req.params['RKDSN1Z4U3GETD5NVOLW30IUFCPIVGBAOA1IUA311KLBYO1V'] = client_secret
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end

  def foursquare
  end

end
