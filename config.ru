  require './config/environment'


use Rack::MethodOverride 
use AccountsController
use UsersController
use PostsController
use AdminController
run ApplicationController

