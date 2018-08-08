class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.where(["title LIKE?", "%#{params[:search]}%"])
  end
end
