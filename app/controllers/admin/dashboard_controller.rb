class Admin::DashboardController < ApplicationController
  def show
    @product_numbers = Product.count
    @category_numbers = Category.count 
  end
end
