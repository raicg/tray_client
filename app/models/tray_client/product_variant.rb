module TrayClient
  class ProductVariant < OpenStruct
    class << self
      def base_url
        TrayClient::Client.base_url + '/products/variants'
      end

      def get(token = '', query = {})
        TrayClient::Client.get(token, base_url, '', {}, '', query)
      end

      def get_variants(token = '', id = '0')
        TrayClient::Client.get(token, base_url, id, {}, '', query)
      end

      def create(token = '', query = {})
        TrayClient::Client.post(token, base_url, '', {}, '', query)
      end

      def update(token = '', id = '0', query = {})
        TrayClient::Client.update(token, base_url, id, {}, '', query)
      end

      def delete(token = '', id = '0')
        TrayClient::Client.delete(token, base_url, id)
      end
    end
  end
end