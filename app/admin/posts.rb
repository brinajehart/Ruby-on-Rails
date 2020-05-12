ActiveAdmin.register Post do

  permit_params :ime, :opis, :stevilka, :user_id, :attachment

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  
  #
  # or
  #
  # permit_params do
  #   permitted = [:ime, :opis, :stevilka, :user_id, :attachment]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
