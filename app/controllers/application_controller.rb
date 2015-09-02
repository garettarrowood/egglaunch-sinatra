class ApplicationController < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views") }
  set :sessions => true

  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application's_super_secret_secret"
end