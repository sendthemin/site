class ApplicationController < ActionController::Base
  protect_from_forgery
   

def current_ability

	@current_ident = Ident.find(session[:selected])
  @current_ability ||= Ability.new(current_user, @current_ident)
end

def after_sign_in_path_for(user)
  idents_path
end

end