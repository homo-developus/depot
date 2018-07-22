class StoreController < ApplicationController
  include EnterCounter
  include CurrentCart

  before_action :inc_counter, :set_cart, only: [:index]

  def index
    @products = Product.order(:title)
  end
end
