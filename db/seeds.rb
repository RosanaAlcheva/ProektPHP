# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#vinarii
v1 = Vinarija.create(ime: 'Tikves', region: 'Tikveski', grad: 'Kavadarci', godina: 1885, opis: 'Mnogu ubava vinarijas', veb_strana: 'http://tikves.com.mk', slika: 'tikves.png')
v2 = Vinarija.create(ime: 'Stobi', region: 'Gradsko', grad: 'Gradsko', godina: 1885, opis: 'Mnogu ubava vinarijas', veb_strana: 'http://www.stobiwinery.mk', slika: 'stobi.png')
v3 = Vinarija.create(ime: 'Imako Vino', region: 'Stip', grad: 'Stip', godina: 2002, opis: 'Mnogu ubava vinarijas', veb_strana: 'http://imakovino.com.mk', slika: 'imako2.png')
v4 = Vinarija.create(ime: 'Valandovo', region: 'Valandovo', grad: 'Valandovo', godina: 1948, opis: 'Mnogu ubava vinarijas', veb_strana: 'http://www.vizbavalandovo.com.mk', slika: 'valandovo.png')
v5 = Vinarija.create(ime: 'Skovin', region: 'Skopje', grad: 'Skopje', godina: 1979, opis: 'Mnogu ubava vinarijas', veb_strana: 'http://www.skovin.mk', slika: 'skovin.png')
v7 = Vinarija.create(ime: 'Bovin', region: 'Negotino', grad: 'Negotino', godina: 1998, opis: 'Mnogu ubava vinarijas', veb_strana: 'http://www.bovin.com.mk/', slika: 'bovin.png')
v8 = Vinarija.create(ime: 'Vinarija Popov', region: 'Tikveski', grad: 'Kavadarci', godina: 2001, opis: 'Mnogu ubava vinarijas', veb_strana: 'http://www.popovwinery.com.mk/', slika: 'popov.png')
v9 = Vinarija.create(ime: 'Popova Kula', region: 'Demir Kapija', grad: 'Demir Kapija', godina: 2005, opis: 'Mnogu ubava vinarijas', veb_strana: 'http://www.popovakula.com.mk/', slika: 'popova.png')

#vina
vino1 = Vino.create(ime: 'Vranec', vid: 'suvo', tip: 'klasik', sorta: 'Vranec', boja: 'crveno', slika: '/', vinarija_id: v2.id)
vino2 = Vino.create(ime: 'Tga za jug', vid: 'polusuvo', tip: 'tradicionalno', sorta: 'Vranec', boja: 'crveno', slika: '/', vinarija_id: v1.id)

#sluzenje
s1 = Sluzenje.create(temperatura_max: "18" ,temperatura_min: "16", slika_chasa: "casaCrveno.png", vino_id: vino1.id)
s2 = Sluzenje.create(temperatura_max: "18" ,temperatura_min: "16", slika_chasa: "casaCrveno.png", vino_id: vino2.id)

#hrana
hrana_cheese = Hrana.create(ime: "Sirenje" , slika: "cheese.jpg")
hrana_chicken = Hrana.create(ime: "Pilesko meso" , slika: "chicken.jpg")
hrana_desert = Hrana.create(ime: "Desert" , slika: "desert.jpg")
hrana_fish = Hrana.create(ime: "Riba" , slika: "fish.jpg")
hrana_fruit = Hrana.create(ime: "Obosje" , slika: "fruit.jpg")
hrana_meat = Hrana.create(ime: "Meso" , slika: "meat.jpg")
hrana_pasta = Hrana.create(ime: "Testenini" , slika: "pasta.jpg")
hrana_seafood = Hrana.create(ime: "Morska hrana" , slika: "seafood.jpg")
hrana_vegetable = Hrana.create(ime: "Zelencuk" , slika: "vegetable.jpg")

#join table Sluzenje_Hrana
SluzenjeHrana.create({sluzenje_id: s1.id, hrana_id: hrana_cheese.id})
SluzenjeHrana.create({sluzenje_id: s1.id, hrana_id: hrana_meat.id})
SluzenjeHrana.create({sluzenje_id: s2.id, hrana_id: hrana_cheese.id})
SluzenjeHrana.create({sluzenje_id: s2.id, hrana_id: hrana_meat.id})
