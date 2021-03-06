require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  # run all specs when using a filter, but no spec match
  config.run_all_when_everything_filtered = true
  config.log_level = :error
  config.platform = 'ubuntu'
  config.version = '14.04'
  config.color = true
  config.tty = true
  config.formatter = :documentation
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
  config.expect_with :rspec do |c|
  config.file_cache_path = '/var/chef/cache'
  c.syntax = :expect
  end
end

at_exit { ChefSpec::Coverage.report! }