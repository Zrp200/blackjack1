require_relative "spec_helper"
require "rspec/matchers"
define :bust do
  match do |actual|
    actual.bust?
  end
end
