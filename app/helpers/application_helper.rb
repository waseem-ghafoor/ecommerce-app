module ApplicationHelper
  def login_button
    if user_signed_in?
      link_to 'Logout', destroy_user_session_path, method: :delete, class: 'nav-link'
    else
      link_to 'Login', new_user_session_path, class: 'nav-link'
    end
  end 
  def add_product_button
    link_to 'Add new product', new_product_path, class: 'nav-link' if account_seller_type?
  end
  def account_seller_type?
    return current_user.present? && current_user.user_type == 'seller'   
  end 
end