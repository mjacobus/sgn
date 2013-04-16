require 'addressable/uri'
require 'net/http'
require 'json'

module Sgn
  class Webservice

    WS_HOST = 'www.sgn.com.br'
    WS_BASE = '/webservice/'

    def initialize(customer_id, password, version = 'sgn2')
      @customer_id = customer_id
      @password = password
      @version = version
    end

    def get(service, params = {})
      get_json(service, params)
    end

    private
      def get_json(service, params = {})
        params.merge!({
          cliente: @customer_id,
          senha: @password,
          sistema: @version
        })

        klass = self.class
        query_string = ::Addressable::URI.new(query_values: params).query
        uri = [klass::WS_BASE, service, '.php?', query_string].join()
        response = Net::HTTP.get_response(klass::WS_HOST, uri)
        JSON.parse(response.body)
      end

  end
end