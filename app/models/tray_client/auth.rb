# frozen_string_literal: true

module TrayClient
  class Auth < OpenStruct
    class << self
      def base_url
        "#{TrayClient::Client.base_url}/auth"
      end

      def authenticate
        id = ''
        endpoint = ''
        query = {}
        params = { consumer_key: ENV['TRAY_API_CONSUMER_KEY'],
                    consumer_secret: ENV['TRAY_API_CONSUMER_SECRET'],
                    code: ENV['TRAY_API_CODE'] }
        TrayClient::Client.post(base_url, id, params, endpoint, query)
      end

      def refresh_authentication(query = {})
        id = ''
        endpoint = ''
        params = {}
        TrayClient::Client.get(base_url, id, params, endpoint, query)
      end
    end
  end
end
