set :domain, 'terralien.biz'
set :gem_name, "ufo-#{version}.gem"

role :gems, domain

task :install_gem do
  sudo %(gem uninstall -x -a -i ufo) rescue nil
  put File.read("pkg/#{gem_name}"), gem_name
  sudo %(gem install ~/#{gem_name})
  run %(rm ~/#{gem_name})
end
