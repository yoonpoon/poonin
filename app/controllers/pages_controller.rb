class PagesController < ApplicationController

  def index
    @nav = Nav.all.load.first
    @pages = @nav.pages
  end

  def show
    # @nav = Nav.all.load.first
    # @pages = @nav.pages    
    # @pages = Page.find(params[:slug])
    @page = Page.all.load.first
    @nav = Nav.all.load.first
    @pages = @nav.pages
  end
  
end

