class StoreController < ApplicationController
  include StoreVisit

  def index
    @count = store_visit_incrementer
    @show_counter = counter_greater_than_five
    binding.pry
    @products = Product.order(:title)
  end

end
