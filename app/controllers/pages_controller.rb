class PagesController < ApplicationController
  #load_and_authorize_resource
  def home
  	@idents = Ident.all
  	@communities = Community.all
  	@customers = Customer.all
  	unless current_user == nil
  	@myidents = current_user.idents.all
    @current_ident = Ident.find(session[:selected])
    @myinstances = @current_ident.instances.all
  	else
  	@myidents = nil
  	end
  end

  def about
  end
  def test   
  end
end
