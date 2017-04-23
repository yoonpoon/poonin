class PagesController < ApplicationController

  def index
    @nav = Nav.all.load.first
    @pages = @nav.pages
  end

  def show
    # @nav = Nav.all.load.first
    # @pages = @nav.pages    
    # @pages = Page.find(params[:id])
    @page = Page.all.load.first
    @nav = Nav.all.load.first
    @pages = @nav.pages
    # @something = Page.find(params[:page.projectTitle])
 
  end
  
end

