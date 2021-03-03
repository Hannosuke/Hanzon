class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :favorite]
  PER = 15

  def index
    @products = Product.page(params[:page]).per(PER)
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
    @review = @reviews.new
  end

  def new
    @product = Product.new
    @creategories = Category.all
  end

  def create
    @product = Product.new(product_params)
    @product.category_id = 1
    @product.save
    redirect_to("/")
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to("/")
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url
  end

  def favorite
    current_user.toggle_like!(@product)
    redirect_to product_url @product
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end

end
