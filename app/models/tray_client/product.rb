module TrayClient
  class Product < OpenStruct
    class << self
      def base_url
        TrayClient::Client.base_url + '/products'
      end

      def get(token)
        id = ''
        params = {}
        endpoint = ''
        query = { access_token: token }
        TrayClient::Client.get(base_url, id, params, endpoint, query)
      end

      def get_details(token, id)
        endpoint = ''
        query = { access_token: token }
        params = {}
        TrayClient::Client.get(base_url, id.to_s, params, endpoint, query)
      end

      def create(token, query = {})
        id = ''
        params = {}
        endpoint = ''
        query[access_token] = token
        TrayClient::Client.post(base_url, id.to_s, params, endpoint, query)
      end

      def update(token, id, query = {})
        params = {}
        endpoint = ''
        query[access_token] = token
        TrayClient::Client.update(base_url, id, params, endpoint, query)
      end

      def delete(token, id)
        endpoint = ''
        query = { access_token: token }
        params = {}
        TrayClient::Client.delete(base_url, id.to_s, params, endpoint, query)
    end
  end
end