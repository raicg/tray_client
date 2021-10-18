# frozen_string_literal: true

module TrayClient
  class Coupon < OpenStruct
    class << self
      def base_url
        "#{TrayClient::Client.base_url}/discount_coupons"
      end

      def get(token)
        id = ''
        endpoint = ''
        query = { access_token: token }
        params = {}
        TrayClient::Client.get(base_url, id, params, endpoint, query)
      end

      def get_details(token, id)
        endpoint = ''
        query = { access_token: token }
        params = {}
        TrayClient::Client.get(base_url, id.to_s, params, endpoint, query)
      end

      def customer_relationship(token, id)
        endpoint = '/customer_relationship'
        query = { access_token: token }
        params = {}
        TrayClient::Client.get(base_url, id.to_s, params, endpoint, query)
      end

      def product_relationship(token, id)
        endpoint = '/product_relationship'
        query = { access_token: token }
        params = {}
        TrayClient::Client.get(base_url, id.to_s, params, endpoint, query)
      end

      def category_relationship(token, id)
        endpoint = '/category_relationship'
        query = { access_token: token }
        params = {}
        TrayClient::Client.get(base_url, id.to_s, params, endpoint, query)
      end

      def brand_relationship(token, id)
        endpoint = '/brand_relationship'
        query = { access_token: token }
        params = {}
        TrayClient::Client.get(base_url, id.to_s, params, endpoint, query)
      end

      def shipping_relationship(token, id)
        endpoint = '/shipping_relationship'
        query = { access_token: token }
        params = {}
        TrayClient::Client.get(base_url, id.to_s, params, endpoint, query)
      end

      def create(token, params)
        id = ''
        endpoint = ''
        query = { access_token: token }
        TrayClient::Client.post(base_url, id.to_s, params, endpoint, query)
      end

      def create_relationship(token, id, params)
        id = ''
        endpoint = '/create_relationship'
        query = { access_token: token }
        TrayClient::Client.post(base_url, id.to_s, params, endpoint, query)
      end


      def update(token, id, params)
        endpoint = ''
        query = { access_token: token }
        TrayClient::Client.update(base_url, id.to_s, params, endpoint, query)
      end

      def update_relationship(token, id, params)
        endpoint = '/create_relationship'
        query = { access_token: token }
        TrayClient::Client.update(base_url, id.to_s, params, endpoint, query)
      end

      def delete(token, id)
        endpoint = ''
        query = { access_token: token }
        params = {}
        TrayClient::Client.delete(base_url, id.to_s, params, endpoint, query)
      end

      def delete_relationship(token, id)
        enpoint = delete_relationship
        query = { access_token: token }
        params = {}
        TrayClient::Client.delete(base_url, id.to_s, params, endpoint, query)
      end
    end
  end
end
