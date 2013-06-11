class NewslettersController < ApplicationController
  def index
    @newsletters = Newsletter.page(params[:page]).per(5)
  end

  def show
    @newsletter = Newsletter.find(params[:id])
  end
end