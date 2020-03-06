class ProductsController < ApplicationController

  def index
    # uses model to get data
    # controller says lets load data and render a view
    @products = Product.all.order(created_at: :desc)
    #render : index is there as magic
  end

  def show
    @product = Product.find params[:id]
  end

end
