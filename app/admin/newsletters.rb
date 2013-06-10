ActiveAdmin.register Newsletter do
  index do
    column :title
    column :published_at
    column :content
    default_actions
  end

  filter :title

  show do |newsletter|
    attributes_table do
      row :title
      row :published_at
      row :content
      # row :image do
      #   image_tag(line.image)
      # end
    end
  end

  form do |f|
    f.inputs "Dados" do
      f.input :title
      f.input :published_at
      f.input :content
      f.input :image
    end
    f.buttons
  end  
end