module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
   before_filter :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = 'AppName | My Portfolio Website'
    @seo_keybords = 'JBjohnnyboys portfolio'
  end
  
  def set_source
    session["source"] = params[:q] if params[:q]
  end
  
end