ActiveAdmin.register Category do
  index do
    column :name
    column :internal
    column :line
    default_actions
  end

  filter :name
  filter :internal

  show do |category|
    attributes_table do
      row :name
      row :line
      row :internal
      row :image do
        image_tag(category.image)
      end
    end
  end

  form do |f|
    f.inputs "Dados" do
      f.input :name
      f.input :line
      f.input :internal
      f.input :image
    end
    f.buttons
  end  
end