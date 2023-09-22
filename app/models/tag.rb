class Tag < ApplicationRecord
  has_many :product_tags
  has_many :products, through: :product_tags
  validates :name, presence: true, uniqueness: true

  def self.options_for_select
    order("LOWER(name)").map { |e| [e.name, e.id] }
  end
end
