require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'rr'

# Try to load it, but don't care if it fails
require 'redgreen' rescue nil

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'long_url'

class Test::Unit::TestCase
  include RR::Adapters::TestUnit
end
