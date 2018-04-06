class ProductsController < ApplicationController
  def index
    @products = Product.all.page(params[:page])
  end

  def new
    @products = Product.where("created_at =< ?", 14.days.ago)
                       .page(params[:page])
  end

  def updated
    @products = Product.where("updated_at =< ?", 14.days.ago)
                       .page(params[:page])
  end

  def search
    
  end

  def show
    @products = Product.find(params[:id])
  end
end
