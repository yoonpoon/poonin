class PagesController < ApplicationController

  def index
    @nav = Nav.all.load.first
    @pages = @nav.pages
  end

  def about
    @nav = Nav.all.load.first
  end

  def show
    @something = "hi"
  end
end
