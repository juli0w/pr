ActiveAdmin.register ExclusiveProduct do
  index do
    column :name
    column :description
    default_actions
  end

  filter :name
  filter :description

  show do |product|
    attributes_table do
      row :name
      row :description
      # row :image do
      #   image_tag(line.image)
      # end
    end
  end

  form do |f|
    f.inputs "Dados" do
      f.input :name
      f.input :description

      f.has_many :product_images do |j|
        j.input :image
        j.input :description
        j.input :_destroy, :as => :boolean, :label => "remover"
      end
    end
    f.buttons
  end  
end
