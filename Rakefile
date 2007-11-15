require 'rubygems'
require 'hoe'
require './lib/ufo.rb'
require 'spacesuit/hoe'

Hoe.new('ufo', UFO::VERSION) do |p|
  p.rubyforge_name = 'ufo'
  p.summary = p.description = 'UFO packages up the scripts that manage a Terralien box.'
  p.url = 'http://terralien.com/'
  p.changes = p.paragraphs_of('History.txt', 0..1).join("\n\n")
  p.author = "Nathaniel Talbott"
  p.email = "nathaniel@terralien.com"
  p.extra_deps << ['cooloptions', '>= 1.0.0']
  p.extra_deps << ['capistrano', '>= 2.1.0']
  p.extra_deps << ['spacesuit', '>= 1.0.1']
end

namespace :remote do
  desc 'Install this gem in the appropriate spot.'
  task :install_gem => :package do
    cap :install_gem, :Version => UFO::VERSION
  end
end

