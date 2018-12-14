module UnderPrivilegeCI
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)
      desc 'Creates underprivilegeCI initializer for your application'

      def copy_initializer
        template 'under_privilege_ci_initializer.rb', 'config/initializers/under_privilege_ci.rb'

        puts 'Done!'
      end
    end
  end
end
