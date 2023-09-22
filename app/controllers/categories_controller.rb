class CategoriesController < ApplicationController
  include FilterModule
  def index
    @name="category"
    @p_name="categories"
    @headers =Category.all.page params[:page]
  end

  def show
    productsFilter()
    @products=@products.where(category_id:params[:id])
    @name=Category.find(params[:id]).name
  end

end
