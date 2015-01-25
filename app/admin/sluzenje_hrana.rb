ActiveAdmin.register SluzenjeHrana do


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

  permit_params :sluzenje_id, :hrana_id

  form do |f|
    f.inputs "Sluzenje-Hrana" do
      f.input :sluzenje, :collection => Sluzenje.all.map{ |sluzenje| [sluzenje.id, sluzenje.id]}
      f.input :hrana, :collection => Hrana.all.map{ |hrana| [hrana.ime, hrana.id]}
    end
    f.actions
  end

end
