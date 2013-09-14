module OmniAuth
  module Strategies
    class Inspire9 < OmniAuth::Strategies::OAuth2
      DEFAULT_PROVIDER_URL = 'https://identity.inspire9.com'

      option :client_options, {
        :site             => DEFAULT_PROVIDER_URL,
        :authorize_url    => "#{DEFAULT_PROVIDER_URL}/access/authorize",
        :access_token_url => "#{DEFAULT_PROVIDER_URL}/access/token"
      }

      uid { raw_info['id'] }

      info do
        {email: raw_info['email']}
      end

      extra do
        {first_name: extra['first_name'], last_name: extra['last_name']}
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
