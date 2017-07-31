class PagesController < ApplicationController
  def index
    @nav = Nav.all.load.first
    @pages = @nav.pages
  end

  def show
    @page = Page.find_by(slug: params[:slug]).load.first
    return redirect_to :root unless @page
  end
end
