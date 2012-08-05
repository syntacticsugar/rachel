 #-*- encoding: utf-8 -*-
require File.expand_path('../lib/rachel/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["RomyRomy...raowr!!!!"]
  gem.email         = ["romy@romyromy.com"]
  gem.date          = ["2012-01-16"]
  gem.description   = %q{Rachel is your pal who defines words for you when you are lazy}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rachel"
  gem.require_paths = ["lib"]
  gem.add_dependency  "rest-client"
  gem.version       = Rachel::VERSION
  gem.post_install_message = %{
  <3 <3 <3 <3 <3 <3
  
  Howdy, stranger!  Rachel says 'THANKS' for the download :D

  Rachel is a smart girl always teaching herself new tricks.  For the latest and greatest build, you'll really want to ensure her firmware, software, and hardware are up to date, check back to her website every now and then for upates, or run 'rachel update' to automatically update your new friend!

  To begin, run 'rachel hello'.
  For help, run 'rachel help'.

  Ex) 'rachel define coruscate'
  }

end
