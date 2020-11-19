class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    # if: -> { controller_name == 'sessions' && action_name == 'create' }
    # skip_before_action :verify_authenticity_token, if: -> { controller_name == 'elevators' && action_name == 'index' }

end
