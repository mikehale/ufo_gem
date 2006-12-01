require 'rubygems'
require 'hoe'
require './lib/ufo.rb'

Hoe.new('ufo', UFO::VERSION) do |p|
  p.rubyforge_name = 'ufo'
  p.summary = p.description = 'UFO packages up the scripts that manage a Terralien box.'
  p.url = 'http://terralien.com/'
  p.changes = p.paragraphs_of('History.txt', 0..1).join("\n\n")
  p.author = "Nathaniel Talbott"
  p.email = "nathaniel@terralien.com"
  p.extra_deps = [['cooloptions', '>= 0.1.0']]
end
