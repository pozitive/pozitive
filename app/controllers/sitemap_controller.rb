class SitemapController < ApplicationController
  layout nil

  def index
    headers['Content-Type'] = 'application/xml'
    locale =I18n.locale
    @blogs = Blog.all
    @static_pages = ['portfolio', 'pages/our-proccess', 'about_us', 'contact_us', 'message/new']
    respond_to do |format|
      format.xml 
    end
  end
end
