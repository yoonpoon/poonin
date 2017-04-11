class PagesController < ApplicationController

  def index
    @nav = Nav.all.load.first
    @pages = Page.all
  end


  def show
    @something = "hi"
  end
end
