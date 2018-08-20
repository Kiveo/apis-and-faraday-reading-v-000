class SearchesController < ApplicationController

  def search
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['KLDTZ0SWOTENW0EFWBNZ1E5UKLVKTOW4UQXQLM0IGMKIFP3I'] = client_id
      req.params['client_secret'] = client_secret
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end

  def foursquare
  end

end
