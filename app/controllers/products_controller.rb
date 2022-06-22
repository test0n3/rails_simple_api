class ProductsController < ApplicationController
  def index
    @products = Product.all.order(id: :asc)
    respond_to do |format|
      format.json { render json: @products, status: 200 }
      format.xml { render xml: @products.as_json, status: 200 }
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: 201
    else
      return head 422
    end
  end

  def show
    @product = Product.find(params[:id])
    if @product.nil?
      return head 404
    else
      respond_to do |format|
        format.json { render json: @product, status: 200 }
        format.xml { render xml: @product.as_json, status: 200 }
      end
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :vendor, :price,
                                    :currency, :stock, :image_url, :sku)
  end
end
