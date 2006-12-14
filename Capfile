set :domain, 'terralien.biz'
set :gem, "ufo-#{version}.gem"

role :gems, domain

task :install_gem do
  sudo %(gem uninstall -x -a -i ufo) rescue nil
  put File.read("pkg/#{gem}"), gem
  sudo %(gem install ~/#{gem})
  run %(rm ~/#{gem})
end
