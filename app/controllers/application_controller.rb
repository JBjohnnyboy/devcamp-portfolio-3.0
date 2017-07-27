class ApplicationController < ActionController::Base
  layout 'portfolio'
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  
  
  before_action :set_source
  
  before_filter :set_title
  
  
  def set_source
    session["source"] = params[:q] if params[:q]
  end
  
  def set_title
    @page_title = 'AppName | My Portfolio Website'
  end
  


end
