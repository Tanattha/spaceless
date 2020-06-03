require './config/environment'

use Rack::MethodOverride 
use AssignmentsController
use UsersController
use PostsController
use AdminController
run ApplicationController


