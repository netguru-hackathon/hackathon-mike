UnderPrivilegeCI.configure do |config|
  # If you'd like to use a custom command for each step
  # - please substitute the default one with whatever you want.
  # Also: let us know which one of the listed checks are required
  # before we attempt to deploy your shitty app.

  # config.options = {
  #   rspec: { command: 'rspec', required: true },
  #   rubocop: { command: 'rubocop', required: true },
  #   bundler_audit: { command: 'bundle audit check --update', required: true },
  #   brakeman: { command: 'brakeman', required: true },
  #   deploy: { command: 'cap staging deploy'}
  # }
end
