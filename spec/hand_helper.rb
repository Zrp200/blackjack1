require_relative "spec_helper"
RSpec::Matchers.define :bust do
  match do |actual|
    actual.bust?
  end
end
RSpec::Matchers.define :have_blackjack do
  match {|actual| actual.blackjack?}
end
