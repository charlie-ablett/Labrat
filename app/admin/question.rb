ActiveAdmin.register Question do
  index do
    column :name
    column :instruction
    column :text
    default_actions
  end


  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :instruction
      f.input :text
    end
    f.actions
  end

  show do |f|
    panel "Question Details", :style => "width:80%" do
      table :for => question do
        tr :class => "name" do
          th "Name", :style => "width:20%;"
          td f.name
        end
        tr :class => "instruction" do
          th "Instruction", :style => "width:20%;"
          td f.instruction
        end
        tr :class => "text" do
          th "Text", :style => "width:20%;"
          td f.text
        end
      end
    end
  end
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
