require './config/environment'

use Rack::MethodOverride

use Rack::Static, :root => 'public', :urls => ['/images', '/stylesheets']

use MemberController
use TeamController
use RuleController
run ApplicationController