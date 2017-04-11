class PagesController < ApplicationController

  def index
    @nav = Nav.all.load.first
    @pages = @nav.page
  end


  def show
    @something = "hi"
  end
end
