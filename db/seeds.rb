# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#vinarii
v1 = Vinarija.create(ime: 'Tikves', region: 'Tikveski', grad: 'Kavadarci', godina: 1885, opis: 'Mnogu ubava vinarija', veb_strana: 'htttp://tikves.com.mk', slika: 'http://www.exploringmacedonia.com/content/top%20pic%20Tikves.jpg')
v2 = Vinarija.create(ime: 'Stobi', region: 'Gradsko', grad: 'Gradsko', godina: 1885, opis: 'Mnogu ubava vinarija', veb_strana: 'htttp://www.stobiwinery.mk', slika: 'http://www.macedoniaholidaysandtours.com/Upload/Gallery/Large/Stobi_Winery02.jpg')

#vina
Vino.create(ime: 'Vranec', vid: 'suvo', tip: 'klasik', sorta: 'Vranec', boja: 'crveno', vinarija_id: v2.id)
Vino.create(ime: 'Tga za jug', vid: 'polusuvo', tip: 'tradicionalno', sorta: 'Vranec', boja: 'crveno', vinarija_id: v1.id)
