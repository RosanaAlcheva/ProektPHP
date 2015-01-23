ActiveAdmin.register Vino do


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

  permit_params :ime, :vid, :tip, :sorta, :boja, :slika, :vinarija_id

  form do |f|
    f.inputs "Vino" do
      f.input :vinarija, :collection => Vinarija.all.map{ |vinarija| [vinarija.ime, vinarija.id]}
      f.input :ime
      f.input :vid
      f.input :tip
      f.input :sorta
      f.input :boja
      f.input :slika
    end
    f.actions
  end

end
