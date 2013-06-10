class HomeController < ApplicationController
  def home
    render layout: false
  end  

  def index
    @lines = Line.all
    @banners = Banner.all
  end

  def empresa
  end

  def contato
  end
end
