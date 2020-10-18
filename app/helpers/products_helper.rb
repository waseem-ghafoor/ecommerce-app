module ProductsHelper
  def form_submit_button
    action_name == 'new' ? 'Add Product' : 'Update Product'
  end  
end
