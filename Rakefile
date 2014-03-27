# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
#show DangJian::API routes
desc "API Routes"
task :routes do
  api_modul = [DangJian::API, WeiXin::API]
  api_modul.each do |m|
    m.routes.each do |api|
      method = api.route_method.ljust(10)
      path = api.route_path
      puts "     #{method} #{path}"
    end
  end
end
###

CrmTest::Application.load_tasks
