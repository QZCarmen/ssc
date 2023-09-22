class Brand < ApplicationRecord
  mount_uploader :image, CollectionImagesUploader
  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
  def self.options_for_select
    order("LOWER(name)").map { |e| [e.name, e.id] }
  end
end
