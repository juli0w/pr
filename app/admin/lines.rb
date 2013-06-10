ActiveAdmin.register Line do
  index do
    column :name
    column :title
    column :description
    default_actions
  end

  filter :title
  filter :description

  show do |line|
    attributes_table do
      row :name
      row :title
      row :description
      row :image do
        image_tag(line.image)
      end
    end
  end

  form do |f|
    f.inputs "Dados" do
      f.input :name
      f.input :title
      f.input :description
      f.input :image
    end
    f.buttons
  end  
end
