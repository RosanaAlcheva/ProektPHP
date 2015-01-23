ActiveAdmin.register Sluzenje do


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

  permit_params :vino_id, :temperatura_max, :temperatura_min, :slika_chasa

  form do |f|
    f.inputs "Sluzenje" do
      f.input :vino, :collection => Vino.all.map{ |vino| [vino.ime, vino.id]}
      f.input :temperatura_max
      f.input :temperatura_min
      f.input :slika_chasa

    end
    f.actions
  end
end
