ActiveAdmin.register Product do
  permit_params :name, :price, :description, :user_id, :published

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :price, :description, :published, :user_id, :product_images
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :description, :published, :user_id, :product_images]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :price
      f.input :description
      f.input :user_id
      f.input :published, as: :select, collection: [['Approved', true], ['Not Approved', 'false']]
    end
    f.actions
  end
  
end
