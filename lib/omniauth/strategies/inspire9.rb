module OmniAuth
  module Strategies
    class Inspire9 < OmniAuth::Strategies::OAuth2
      DEFAULT_PROVIDER_URL = 'https://identity.inspire9.com'

      option :client_options, {
        :site             => DEFAULT_PROVIDER_URL,
        :authorize_url    => "#{DEFAULT_PROVIDER_URL}/access/authorize",
        :access_token_url => "#{DEFAULT_PROVIDER_URL}/access/token"
      }
      option :provider_ignores_state, true

      uid { raw_info['id'] }

      info do
        raw_info['info']
      end

      extra do
        raw_info['extra']
      end

      private

      def extra
        raw_info['extra']
      end

      def raw_info
        @raw_info ||= access_token.get(raw_path).parsed
      end

      def raw_path
        "/access/user.json?oauth_token=#{access_token.token}"
      end
    end
  end
end
