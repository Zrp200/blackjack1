Gem::Specification.new do |gem|
	gem.name = "blackjack1"
	gem.version = ENV['TRAVIS_TAG'] if ENV['TRAVIS']
	gem.version = ENV['TRAVIS_BUILD_ID'] if ENV['TRAVIS'] and ENV['TRAVIS_TAG'] == ""
	gem.email = "zrp200@gmail.com"
	gem.author = "Zachary Perlmutter"
	gem.files = Dir.glob "lib/*.rb"
	gem.license = "MIT"
	gem.extra_rdoc_files = %w(README.md LICENSE)
	gem.summary = "The classic game of blackjack, commonly played in casinos"
	gem.executables << "blackjack1"
	gem.required_ruby_version = ">= 1.9.2"
	gem.add_runtime_dependency "card_deck", "~> 2.1"
	gem.add_development_dependency "rspec", "~> 3.1"
	gem.add_development_dependency "rspec-its"
	gem.requirements << "Command Prompt"
	gem.bindir = "bin"
end
