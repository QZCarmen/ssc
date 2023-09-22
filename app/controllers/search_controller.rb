class SearchController < ApplicationController
  include FilterModule
  def index
    @search = params["search"]
    if @search.present?
      @name = @search["name"]

      productsFilter()
      @products = @products.joins(:category, :brand, :collection).where('categories.name LIKE ? OR brands.name LIKE ? OR products.name LIKE ? OR collections.name LIKE ?', "%#{@name}%", "%#{@name}%", "%#{@name}%","%#{@name}%").page params[:page]


    end
  end
end
