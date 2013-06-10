ActiveAdmin.register Banner do
  index do
    column :image
    default_actions
  end

  show do |banner|
    attributes_table do
      row :image do
        image_tag(banner.image)
      end
    end
  end

  form do |f|
    f.inputs "Dados" do
      f.input :image
    end
    f.buttons
  end  
end