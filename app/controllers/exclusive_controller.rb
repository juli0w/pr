# encoding: UTF-8
class ExclusiveController < ApplicationController
  def index
    @message = Message.new
  end

  def products
    @exclusive_products = ExclusiveProduct.all
  end
end