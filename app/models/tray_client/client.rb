# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'json'

module TrayClient
  class Client < OpenStruct
    class << self
      def client
        http = Net::HTTP.new(url_endpoint.host, url_endpoint.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        http
      end

      def url_endpoint(url = base_url, id = '', endpoint = '')
        id.blank? ? URI(url + endpoint) : URI(url + endpoint + '/' + id)
      end

      def request(url = base_url, type = :get, id = '', params = {}, endpoint = '', query = {})
        uri = url_endpoint(url, id, endpoint)
        uri.query = URI.encode_www_form(query)
        request = Net::HTTP::Get.new(uri) if type == :get
        request = Net::HTTP::Post.new(uri) if type == :post
        request = Net::HTTP::Put.new(uri) if type == :put
        request = Net::HTTP::Delete.new(uri) if type == :delete
        request['content-type'] = 'application/json'
        request.body = "#{params.to_json}" unless params.blank?
        request
      end

      def post(url = base_url, id = '', params = {}, endpoint = '', query = {})
        request = request(url, :post, id, params, endpoint, query)
        response = client.request(request).read_body
        JSON.parse(response) unless response.nil?
      end

      def get(url = base_url, id = '', params = {}, endpoint = '', query = {})
        request = request(url, :get, id, params, endpoint, query)
        response = client.request(request).read_body
        JSON.parse(response) unless response.nil?
      end

      def update(url = base_url, id = '', params = {}, endpoint = '', query = {})
        request = request(url, :put, id, params, endpoint, query)
        response = client.request(request).read_body
        JSON.parse(response) unless response.nil?
      end

      def delete(url = base_url, id = '', params = {}, endpoint = '', query = {})
        request = request(url, :delete, id, params, endpoint, query)
        response = client.request(request).read_body
        JSON.parse(response) unless response.nil?
      end

      def base_url
        return puts 'ERROR: YOU NEED TO SETUP THE ENV VAR: TRAY_API_BASE_URL !' if ENV['TRAY_API_BASE_URL'].nil?
        ENV['TRAY_API_BASE_URL'].gsub(/\/$/, '')
      end
    end
  end
end