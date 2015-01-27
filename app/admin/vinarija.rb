ActiveAdmin.register Vinarija do


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

  permit_params :ime, :region, :grad, :godina, :opis, :veb_strana, :slika

  form do |f|
    f.inputs "Vinarija"  do
      f.input :ime
      f.input :region
      f.input :grad
      f.input :godina
      f.input :opis
      f.input :veb_strana
      f.input :slika
    end
      f.actions
  end

end
