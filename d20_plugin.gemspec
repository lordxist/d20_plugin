Gem::Specification.new do |s|
  s.name = 'd20'
  s.author = 'lordxist'
  s.date     = Time.now
  s.summary = 'd20 roleplaying game plugin for Ruby on Rails'
  s.version = '0.0.5'
  s.files = ["MIT-LICENSE",
             "README",
             "Rakefile",
             "d20.gemspec",
             "generators",
             "generators/d20",
             "generators/d20/d20_generator.rb",
             "generators/d20/templates",
             "generators/d20/USAGE",
             "init.rb",
             "lib",
             "lib/lordxist-d20.rb",
             "lib/d20.rb",
             "lib/d20",
             "lib/d20/core_ext",
             "lib/d20/core_ext/integer.rb",
             "lib/ability.rb",
             "lib/app",
             "lib/app/model",
             "lib/app/model/game_character.rb",
             "rails",
             "rails/init.rb"]
end
