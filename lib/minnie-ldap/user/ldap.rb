require 'net-ldap'

module Minnie
  module User
    module Ldap
      def self.included(klass)
        klass.extend ClassMethods
      end
      
      module ClassMethods
        def authenticate(username, password, domain = 'corp.ads')
          return false unless username && password
          if bind(username, password, domain)
            return find_or_create_by_username username
          else
            return nil
          end
        end

        def bind(username, password, domain)
          ::Net::LDAP.new(
            :auth => {
                :method => :simple,
                :username => "#{username}@#{domain}",
                :password => password
            },
            :encryption => :simple_tls,
            :base => domain.split('.').map {|dc| "dc=#{dc}"}.join(','),
            :host => domain,
            :port => '636'
          ).bind
        end   
      end     
    end
  end
end
