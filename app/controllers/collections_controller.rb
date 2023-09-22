class CollectionsController < ApplicationController
  include FilterModule
  def index
    @name="collection"
    @p_name="collections"
    @headers =Collection.all.page params[:page]
  end

  def show
    productsFilter()
    @products=@products.where(collection_id:params[:id])
    @name=Collection.find(params[:id]).name
  end

end
