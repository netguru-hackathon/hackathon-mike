# frozen_string_literal: true
require 'open3'

module UnderPrivilegeCI
  module Command
    class Base
      attr_reader :stdout, :stderr, :exit_code

      def initialize(command, args = '')
        @command = command
        @args = args
        call
      end

      private

      attr_reader :command, :args

      def call
        @stdout, @stderr, @exit_code = Open3.capture3("#{command} #{args}")
      end
    end
  end
end
