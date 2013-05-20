class PagesController < ApplicationController
  # load_and_authorize_resource
  def home
  	@idents = Ident.all
  	@communities = Community.all
  	@customers = Customer.all
  	@myidents = current_user.idents.all
  end

  def about
  end
end
