class StoreController < ApplicationController
  def index
    @count = store_visit_incrementer
    @products = Product.order(:title)
  end

  private

  def store_visit_incrementer
    session[:counter] ||= 0
    session[:counter] += 1
  end
end
