ActiveAdmin.register User do
  index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end
  
  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
