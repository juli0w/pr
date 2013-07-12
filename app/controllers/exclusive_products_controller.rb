# encoding: UTF-8
class ExclusiveProductsController < ApplicationController
  def show
    @exclusive_product = ExclusiveProduct.find(params[:id])

    respond_to do |format|
      format.html
      format.js
    end
  end
end