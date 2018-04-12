class ProductsController < ApplicationController
  def index
    @products = if params[:term]
                  Product.where('name LIKE ?', "%#{params[:term]}%")
                         .or(Product.where('description LIKE ?',
                                           "%#{params[:term]}%"))
                else
                  Product.all.order(:name)
                end
    if params[:category_id] && params[:category_id] != '0'
      @products = @products.where('category_id = ?', "#{params[:category_id]}")
    end
    @categories = Category.all
    @products = @products.page(params[:page])
  end

  def new
    @products = Product.where('created_at <= ?', 14.days.ago)
                       .page(params[:page])
    @categories = Category.all
  end

  def updated
    @products = Product.where('updated_at <= ?', 14.days.ago)
                       .page(params[:page])
    @categories = Category.all
  end

  def show
    @products = Product.find(params[:id])
    @categories = Category.all
  end
end
