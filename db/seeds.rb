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
v3 = Vinarija.create(ime: 'Imako Vino', region: 'Stip', grad: 'Stip', godina: 2002, opis: 'Mnogu ubava vinarija', veb_strana: 'http://imakovino.com.mk', slika: 'http://imakovino.com.mk/wp-content/uploads/2013/01/PinotNoir-075l-Discover_thumb_wide.png')
v4 = Vinarija.create(ime: 'Vizba Valandovo', region: 'Valandovo', grad: 'Valandovo', godina: 1948, opis: 'Mnogu ubava vinarija', veb_strana: 'http://www.vizbavalandovo.com.mk', slika: '/')
v5 = Vinarija.create(ime: 'Skovin', region: 'Skopje', grad: 'Skopje', godina: 1979, opis: 'Mnogu ubava vinarija', veb_strana: 'http://www.skovin.mk', slika: '/')
v6 = Vinarija.create(ime: 'Povardarie', region: 'Negotino', grad: 'Negotino', godina: 1963, opis: 'Mnogu ubava vinarija', veb_strana: '/', slika: '/')
v7 = Vinarija.create(ime: 'Bovin', region: 'Negotino', grad: 'Negotino', godina: 1998, opis: 'Mnogu ubava vinarija', veb_strana: 'http://www.bovin.com.mk/', slika: 'http://www.bovin.com.mk/images/Gold-Medal-Alexandar-2008.gif')
v8 = Vinarija.create(ime: 'Vinarija Popov', region: 'Tikveski', grad: 'Kavadarci', godina: 2001, opis: 'Mnogu ubava vinarija', veb_strana: 'http://www.popovwinery.com.mk/', slika: 'http://www.popovwinery.com.mk/images/index_02.jpg')
v9 = Vinarija.create(ime: 'Popova Kula', region: 'Demir Kapija', grad: 'Demir Kapija', godina: 2005, opis: 'Mnogu ubava vinarija', veb_strana: 'http://www.popovakula.com.mk/', slika: 'http://www.popovakula.com.mk/images/vina/Roze.gif')

#vina
Vino.create(ime: 'Vranec', vid: 'suvo', tip: 'klasik', sorta: 'Vranec', boja: 'crveno', vinarija_id: v2.id)
Vino.create(ime: 'Tga za jug', vid: 'polusuvo', tip: 'tradicionalno', sorta: 'Vranec', boja: 'crveno', vinarija_id: v1.id)
