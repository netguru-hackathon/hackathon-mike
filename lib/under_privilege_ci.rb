# frozen_string_literal: true

module UnderPrivilegeCI
  class Base
    def call
      puts "Hello!"
    end

  class << self
      attr_accessor :configuration
    end

    def self.configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end

    class Configuration
      attr_accessor :options

      def initialize
        @options = default_options
      end

      def default_options
        {
          rspec: { command: 'rspec', required: true },
          rubocop: { command: 'rubocop', required: true },
          bundler_audit: { command: 'bundle audit check --update', required: true },
          brakeman: { command: 'brakeman', required: true },
          deploy: { command: 'cap staging deploy'}
        }
      end
    end
  end
end
