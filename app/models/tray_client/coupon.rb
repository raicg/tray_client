# frozen_string_literal: true

module TrayClient
  class Coupon < OpenStruct
    class << self
      def base_url
        TrayClient::Client.base_url + '/discount_coupons'
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
    end
  end
end
