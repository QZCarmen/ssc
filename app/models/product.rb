class Product < ApplicationRecord
  mount_uploader :image, ProductImagesUploader
  paginates_per 15
  belongs_to :brand
  belongs_to :category
  belongs_to :collection
  has_many :product_tags
  has_many :tags, through: :product_tags
  has_many :cart_products
  has_many :carts, :through=>:cart_products
  accepts_nested_attributes_for :product_tags, allow_destroy: true

  validates :name, :brand, :category,:price,:quantity, presence: true

  filterrific(
    default_filter_params: { sorted_by: 'created_at_desc' },
    available_filters: [
      :sorted_by,
      :with_brand_id,
      :with_category_id,
      :with_collection_id,
      :with_any_tag_ids,
      :with_created_at_gte,
    ]
  )

  scope :sorted_by, ->(sort_option) {
    # extract the sort direction from the param value.
    direction = /desc$/.match?(sort_option) ? "desc" : "asc"
    case sort_option.to_s
    when /^created_at_/
      # Simple sort on the created_at column.
      # Make sure to include the table name to avoid ambiguous column names.
      # Joining on other tables is quite common in Filterrific, and almost
      # every ActiveRecord table has a 'created_at' column.
      order("products.created_at #{direction}")
    when /^price_/
      order("products.price #{direction}")
    else
      raise(ArgumentError, "Invalid sort option: #{sort_option.inspect}")
    end
  }


  scope :with_brand_id, ->(brand_ids) {
  return nil if brand_ids == [""]
  where(brand_id: [*brand_ids])
  }

  scope :with_category_id, ->(category_ids) {
    return nil if category_ids == [""]
    where(category_id: [*category_ids])
  }

  scope :with_collection_id, ->(collection_ids) {
    return nil if collection_ids == [""]
    where(collection_id: [*collection_ids])
  }

  scope :with_any_tag_ids, ->(tag_ids) {
  # get a reference to the join table
  product_tags = ProductTag.arel_table
  # get a reference to the filtered table
  products = Product.arel_table
  # let AREL generate a complex SQL query
  where(
    ProductTag
      .where(product_tags[:product_id].eq(products[:id]))
      .where(product_tags[:tag_id].in([*tag_ids].map(&:to_i)))
      .exists
  )
}

  def self.options_for_sorted_by
    [
      ["HIGHEST PRICE", "price_desc"],
      ["LOWEST PRICE", "price_asc"],
    ]
  end

end
