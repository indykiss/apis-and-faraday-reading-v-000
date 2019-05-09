class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client-id'] = client_id
      req.params['client_secret'] = client_secret
  end
end
