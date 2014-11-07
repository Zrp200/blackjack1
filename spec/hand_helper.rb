require_relative "spec_helper"
RSpec.define :bust do
  match do |actual|
    actual.bust?
  end
end
