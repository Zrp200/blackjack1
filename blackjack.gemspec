Gem::Specification.new do |gem|
	gem.name = "blackjack"
	gem.version = "0.0.0"
	gem.email = "zrp200@gmail.com"
	gem.author = "Zachary Perlmutter"
	gem.files = %w(lib/card.rb lib/deck.rb)
	gem.license = "MIT"
	gem.extra_rdoc_files = %w(README.md LICENSE)
	gem.summary = "The classic game of blackjack"
	gem.executables << "blackjack"
	gem.required_ruby_version = "1.9.2"
	gem.add_runtime_dependency "card_deck", "~> 1.1"
	gem.requirements << "Command Prompt"
	gem.bindir = "bin"
end
