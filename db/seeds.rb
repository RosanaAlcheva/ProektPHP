# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#vinarii
#Popova Kula
v5 = Vinarija.create(ime: 'Skovin', region: 'Skopje', grad: 'Skopje', godina: 1979, opis: 'Mnogu ubava vinarijas', veb_strana: 'http://www.skovin.mk', slika: 'skovin.png')
v7 = Vinarija.create(ime: 'Bovin', region: 'Negotino', grad: 'Negotino', godina: 1998, opis: 'Mnogu ubava vinarijas', veb_strana: 'http://www.bovin.com.mk/', slika: 'bovin.png')
v8 = Vinarija.create(ime: 'Vinarija Popov', region: 'Tikveski', grad: 'Kavadarci', godina: 2001, opis: 'Mnogu ubava vinarijas', veb_strana: 'http://www.popovwinery.com.mk/', slika: 'popov.png')
v9 = Vinarija.create(ime: 'Popova Kula', region: 'Demir Kapija', grad: 'Demir Kapija', godina: 2005, opis: 'Локално и регионално располагаме со традиционални сорти кои имаат извонредни каректеристики. Виното од нив би можело да им се допадне на потрошувачите ширум светот.', veb_strana: 'http://www.popovakula.com.mk/', slika: 'popova.png')

#vina
#Popova Kula
vino_popovakula_1 = Vino.create(ime: 'Станушина', vid: 'суво', tip: 'Станушина', sorta: 'Станушина', boja: 'розе', slika: 'stanushina.gif', vinarija_id: v9.id)
vino_popovakula_2 = Vino.create(ime: 'Темјаника', vid: 'полуслатко', tip: 'Класик', sorta: 'Темјаника', boja: 'бело', slika: 'temjanika-popova-kula.gif', vinarija_id: v9.id)
vino_popovakula_3 = Vino.create(ime: 'Алтан', vid: 'суво', tip: 'Демир Капија', sorta: '70% Совињон Блан, 25% Шардоне, 5% Мускат Отонел', boja: 'бело', slika: 'altan.gif', vinarija_id: v9.id)

#sluzenje
#Popova Kula
sluzenje_popkula_1 = Sluzenje.create(temperatura_max: "16" ,temperatura_min: "12", slika_chasa: "casaRoze.png", vino_id: vino_popovakula_1.id)
sluzenje_popkula_2 = Sluzenje.create(temperatura_max: "12" ,temperatura_min: "12", slika_chasa: "casaBelo.png", vino_id: vino_popovakula_2.id)
sluzenje_popkula_3 = Sluzenje.create(temperatura_max: "10" ,temperatura_min: "8", slika_chasa: "casaBelo.png", vino_id: vino_popovakula_3.id)

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
#Popova Kula
SluzenjeHrana.create({sluzenje_id: sluzenje_popkula_1.id, hrana_id: hrana_fruit.id})
SluzenjeHrana.create({sluzenje_id: sluzenje_popkula_2.id, hrana_id: hrana_desert.id})
SluzenjeHrana.create({sluzenje_id: sluzenje_popkula_2.id, hrana_id: hrana_desert.id})
SluzenjeHrana.create({sluzenje_id: sluzenje_popkula_3.id, hrana_id: hrana_cheese.id})
SluzenjeHrana.create({sluzenje_id: sluzenje_popkula_3.id, hrana_id: hrana_chicken.id})
SluzenjeHrana.create({sluzenje_id: sluzenje_popkula_3.id, hrana_id: hrana_fish.id})
SluzenjeHrana.create({sluzenje_id: sluzenje_popkula_3.id, hrana_id: hrana_desert.id})