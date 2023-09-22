ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :name,:description,:price,:quantity,:image,:barcode,:category_id,:brand_id,:collection_id,:enabled,product_tags_attributes: [:id,:product_id,:tag_id,:_destroy]

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Product" do
      f.input :name
      f.input :barcode
      f.input :image
      f.input :description
      f.input :brand_id, :label => 'Brand', :as => :select, :collection => Brand.all
      f.input :category_id,:label => 'Category', :as => :select, :collection => Category.all
      f.input :collection_id,:label => 'Collection', :as => :select, :collection => Collection.all
      f.input :quantity
      f.input :price
      f.input :enabled
      f.has_many :product_tags,allow_destroy:true do |n_f|
        n_f.input :tag, :label=>"Tag"
      end
    end
    f.actions
  end

  index do
    selectable_column
      column :id
      column :name
      column :barcode
      column :brand
      column :category
      column :collection
      column :quantity
      column :price
      column :enabled
      column :tags do |product|
        product.tags.map{|pt| pt.name}.join(", ").html_safe
      end
      column :image
      column :created_at
      column :updated_at
      actions
  end

  show do |product|
    attributes_table do
      row :name
      row :barcode
      row :image
      row :description
      row :brand
      row :category
      row :collection
      row :quantity
      row :price
      row :enabled
      row :tags do |product|
        product.tags.map{|pt| pt.name}.join(", ").html_safe
      end
      row :created_at
      row :updated_at
    end

    active_admin_comments
  end

end
