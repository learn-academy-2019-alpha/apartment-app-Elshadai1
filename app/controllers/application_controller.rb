class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  def after_sign_in_path_for(resource)
    protected_path
  end
end
