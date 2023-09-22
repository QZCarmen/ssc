module FilterModule
  def productsFilter
    @filterrific = initialize_filterrific(
      Product,
      params[:filterrific],
      select_options: {
        sorted_by: Product.options_for_sorted_by,
        with_brand_id: Brand.options_for_select,
        with_collection_id: Collection.options_for_select,
        with_category_id: Category.options_for_select
      },
      persistence_id:false,
      default_filter_params: {},
      available_filters: [:sorted_by, :with_brand_id,:with_collection_id,:with_category_id],
      sanitize_params: true,
    ) || return

    @products = @filterrific.find.page(params[:page])

    # Respond to html for initial page load and to js for AJAX filter updates.
    respond_to do |format|
      format.html
      format.js
    end
  end
end