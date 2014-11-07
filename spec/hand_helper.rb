require_relative "spec_helper"
RSpec::Matchers.define :bust do
  match do |actual|
    actual.bust?
  end
end
