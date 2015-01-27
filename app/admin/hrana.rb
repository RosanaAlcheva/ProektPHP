ActiveAdmin.register Hrana do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


  permit_params :ime, :slika

  form do |f|
    f.inputs "Hrana" do
      f.input :ime
      f.input :slika
    end
    f.actions
  end


end
