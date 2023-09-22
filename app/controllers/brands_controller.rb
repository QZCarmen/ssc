class BrandsController < ApplicationController
  include FilterModule
  def index
    @name="brand"
    @p_name="brands"
    @headers =Brand.all.page params[:page]
  end

  def show
    productsFilter()
    @products=@products.where(brand_id:params[:id])
    @name=Brand.find(params[:id]).name
  end
end
