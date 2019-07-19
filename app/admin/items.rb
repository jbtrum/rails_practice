ActiveAdmin.register Item do
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
  index do
    selectable_column
    id_column
    column :user
    column :category
    column :title
    column :image do |object|
      image_tag object.image.url, style: "width: 100px;" if object.image?
    end


    column :created_at
    actions
  end

end
