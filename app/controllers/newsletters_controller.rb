class NewslettersController < ApplicationController
  def index
    @newsletters = Newsletter.page(params[:page]).per(5)
  end
end