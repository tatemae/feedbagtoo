require 'rubygems'

require 'test/unit'


require 'active_support'
require 'active_support/test_case'

require 'mocha'

require File.dirname(__FILE__) + '/../lib/feedbag'

if RUBY_VERSION < '1.9'
  require 'ruby-debug'
else
  require 'debugger'
end