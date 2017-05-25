class PagesController < ApplicationController

  def index
    @nav = Nav.all.load.first
    @pages = @nav.pages
  end

  def show  
    index = request.params[:slug].to_i
    # @page = Page.all[index]
    @page = Page.all.load[index]
    # render json: [index]
    # @page = Nav.all[index]
    # @nav = Nav.all.load.first
    # @pages = @nav.pages
    # @page = Page.find(params[:slug])
  end

end