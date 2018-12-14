# frozen_string_literal: true
require 'open3'

module UnderPrivilegeCI
  module Command
    class Base
      def initialize(command, args = '')
        @command = command
        @args = args
      end

      def exit_code
        call[2].to_i
      end

      def stdout
        call[0]
      end

      def stderr
        call[1]
      end

      private

      attr_reader :command, :args

      def call
        @call ||= Open3.capture3("#{command} #{args}")
      end
    end
  end
end
