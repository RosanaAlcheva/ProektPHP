# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#VINARII
v1 = Vinarija.create(ime: 'Тиквеш', region: 'Тиквешки', grad: 'Кавадарци', godina: 1885, opis: 'Со повеќе од 125 години работа, оваа винарска визба е најзначајнот творец на моќните македонски вина.', veb_strana: 'http://tikves.com.mk', slika: 'tikves.png')
v2 = Vinarija.create(ime: 'Стоби', region: 'Градско', grad: 'Градско', godina: 2009, opis: 'Најдоброто грозје го заслужува само најдоброто. Само од комбинацијата на знаење, искуство може да се создаде најдоброто и највкусно вино.', veb_strana: 'http://www.stobiwinery.mk', slika: 'stobi.png')
v3 = Vinarija.create(ime: 'Имако Вино', region: 'Штипски', grad: 'Штип', godina: 2002, opis: 'Трета најголема винарска визба со цел да понуди квалитетно вино, за секоја маса, како на домашниот така и на глобалниот пазар.', veb_strana: 'http://imakovino.com.mk', slika: 'imako2.png')
v4 = Vinarija.create(ime: 'Шато Камник', region: 'Скопски', grad: 'Скопје', godina: 2004, opis: 'Автентично македонска, винаријата е израз на величественоста на древниот македонски дух, традиции и почва, и тоа преку еден современ стил на создавање на вино.', veb_strana: 'http://chateaukamnik.com/', slika: 'kamnik.png')

#VINA
vinoTikves1 = Vino.create(ime: 'Alexandria Cuvée', vid: 'Суво', tip: 'Класик', sorta: 'Вранец и мерло', boja: 'Розе', slika: 'alexandriacuvee.png', vinarija_id: v1.id)
vinoTikves2 = Vino.create(ime: 'Т\'га за југ', vid: 'Полусуво', tip: 'Традиционално', sorta: 'Вранец', boja: 'Црвено', slika: 'tgazajug.png', vinarija_id: v1.id)
vinoTikves3 = Vino.create(ime: 'Смедеревка', vid: 'Суво', tip: 'Традиционално', sorta: 'Смедеревка', boja: 'Бело', slika: 'smederevka.png', vinarija_id: v1.id)
#stobi
vinoStobi1 = Vino.create(ime: 'Шардоне', vid: 'Суво', tip: 'Класик', sorta: 'Шардоне', boja: 'Бело', slika: 'sardone.png', vinarija_id: v2.id)
vinoStobi2 = Vino.create(ime: 'Вранец', vid: 'Суво', tip: 'Класик', sorta: 'Вранец', boja: 'Црвено', slika: 'vranec.png', vinarija_id: v2.id)
vinoStobi3 = Vino.create(ime: 'Розе', vid: 'Полусуво', tip: 'Традиционално', sorta: 'Пино Ноар', boja: 'Розе', slika: 'roze.png', vinarija_id: v2.id)
#imako
vinoImako1 = Vino.create(ime: 'Пино Ноар', vid: 'Суво', tip: 'Класик', sorta: 'Пино Ноар', boja: 'Црвено', slika: 'pinotnoir.png', vinarija_id: v3.id)
vinoImako2 = Vino.create(ime: 'Мерлот', vid: 'Суво', tip: 'Традиционално', sorta: 'Мерлот', boja: 'Црвено', slika: 'merlot.png', vinarija_id: v3.id)
vinoImako3 = Vino.create(ime: 'Ризлинг', vid: 'Суво', tip: 'Традиционално', sorta: 'Ризлинг', boja: 'Бело', slika: 'rizling.png', vinarija_id: v3.id)
#Kamnik
vinoKamnik1 = Vino.create(ime: 'Premium Rose Sexy', vid: 'Суво', tip: 'Класик', sorta: 'Sangiovese, Nebiollo, Aglianico и Cabernet Sauvignon', boja: 'Розе', slika: 'premiumroze.png', vinarija_id: v4.id)
vinoKamnik2 = Vino.create(ime: 'Ten Barrels Syrah', vid: 'Полусуво', tip: 'Традиционално', sorta: 'Шираз', boja: 'Црвено', slika: 'tenbarrels.png', vinarija_id: v4.id)
vinoKamnik3 = Vino.create(ime: 'Темјаника', vid: 'Суво', tip: 'Традиционално', sorta: 'Темјаника', boja: 'Бело', slika: 'temjanika.png', vinarija_id: v4.id)


#SLUZENJE
sTikves1 = Sluzenje.create(temperatura_max: "14" ,temperatura_min: "12", slika_chasa: "casaRoze.png", vino_id: vinoTikves1.id)
sTikves2 = Sluzenje.create(temperatura_max: "18" ,temperatura_min: "16", slika_chasa: "casaCrveno.png", vino_id: vinoTikves2.id)
sTikves3 = Sluzenje.create(temperatura_max: "12" ,temperatura_min: "10", slika_chasa: "casaBelo.png", vino_id: vinoTikves3.id)
#stobi
sStobi1 = Sluzenje.create(temperatura_max: "12" ,temperatura_min: "10", slika_chasa: "casaBelo.png", vino_id: vinoStobi1.id)
sStobi2 = Sluzenje.create(temperatura_max: "17" ,temperatura_min: "15", slika_chasa: "casaCrveno.png", vino_id: vinoStobi2.id)
sStobi3 = Sluzenje.create(temperatura_max: "8" ,temperatura_min: "6", slika_chasa: "casaRoze.png", vino_id: vinoStobi3.id)
#imako
sImako1 = Sluzenje.create(temperatura_max: "14" ,temperatura_min: "12", slika_chasa: "casaCrveno.png", vino_id: vinoImako1.id)
sImako2 = Sluzenje.create(temperatura_max: "18" ,temperatura_min: "16", slika_chasa: "casaCrveno.png", vino_id: vinoImako2.id)
sImako3 = Sluzenje.create(temperatura_max: "12" ,temperatura_min: "10", slika_chasa: "casaBelo.png", vino_id: vinoImako3.id)
#Kamnik
sKamnik1 = Sluzenje.create(temperatura_max: "10" ,temperatura_min: "8", slika_chasa: "casaRoze.png", vino_id: vinoKamnik1.id)
sKamnik2 = Sluzenje.create(temperatura_max: "17" ,temperatura_min: "13", slika_chasa: "casaCrveno.png", vino_id: vinoKamnik2.id)
sKamnik3 = Sluzenje.create(temperatura_max: "10" ,temperatura_min: "8", slika_chasa: "casaBelo.png", vino_id: vinoKamnik3.id)


#HRANA
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
#tikves
SluzenjeHrana.create({sluzenje_id: sTikves1.id, hrana_id: hrana_cheese.id})
SluzenjeHrana.create({sluzenje_id: sTikves1.id, hrana_id: hrana_meat.id})
SluzenjeHrana.create({sluzenje_id: sTikves1.id, hrana_id: hrana_pasta.id})
SluzenjeHrana.create({sluzenje_id: sTikves1.id, hrana_id: hrana_vegetable.id})
SluzenjeHrana.create({sluzenje_id: sTikves2.id, hrana_id: hrana_cheese.id})
SluzenjeHrana.create({sluzenje_id: sTikves2.id, hrana_id: hrana_meat.id})
SluzenjeHrana.create({sluzenje_id: sTikves3.id, hrana_id: hrana_chicken.id})
SluzenjeHrana.create({sluzenje_id: sTikves3.id, hrana_id: hrana_fish.id})
SluzenjeHrana.create({sluzenje_id: sTikves3.id, hrana_id: hrana_vegetable.id})
#stobi
SluzenjeHrana.create({sluzenje_id: sStobi1.id, hrana_id: hrana_cheese.id})
SluzenjeHrana.create({sluzenje_id: sStobi1.id, hrana_id: hrana_meat.id})
SluzenjeHrana.create({sluzenje_id: sStobi1.id, hrana_id: hrana_seafood.id})
SluzenjeHrana.create({sluzenje_id: sStobi1.id, hrana_id: hrana_vegetable.id})
SluzenjeHrana.create({sluzenje_id: sStobi1.id, hrana_id: hrana_fish.id})
SluzenjeHrana.create({sluzenje_id: sStobi2.id, hrana_id: hrana_cheese.id})
SluzenjeHrana.create({sluzenje_id: sStobi2.id, hrana_id: hrana_meat.id})
SluzenjeHrana.create({sluzenje_id: sStobi2.id, hrana_id: hrana_desert.id})
SluzenjeHrana.create({sluzenje_id: sStobi3.id, hrana_id: hrana_cheese.id})
SluzenjeHrana.create({sluzenje_id: sStobi3.id, hrana_id: hrana_fish.id})
SluzenjeHrana.create({sluzenje_id: sStobi3.id, hrana_id: hrana_meat.id})
SluzenjeHrana.create({sluzenje_id: sStobi3.id, hrana_id: hrana_fruit.id})
#imako
SluzenjeHrana.create({sluzenje_id: sImako1.id, hrana_id: hrana_meat.id})
SluzenjeHrana.create({sluzenje_id: sImako2.id, hrana_id: hrana_cheese.id})
SluzenjeHrana.create({sluzenje_id: sImako2.id, hrana_id: hrana_meat.id})
SluzenjeHrana.create({sluzenje_id: sImako3.id, hrana_id: hrana_fish.id})
SluzenjeHrana.create({sluzenje_id: sImako3.id, hrana_id: hrana_meat.id})
SluzenjeHrana.create({sluzenje_id: sImako3.id, hrana_id: hrana_seafood.id})
#Kamnik
SluzenjeHrana.create({sluzenje_id: sKamnik1.id, hrana_id: hrana_fruit.id})
SluzenjeHrana.create({sluzenje_id: sKamnik2.id, hrana_id: hrana_meat.id})
SluzenjeHrana.create({sluzenje_id: sKamnik3.id, hrana_id: hrana_desert.id})
SluzenjeHrana.create({sluzenje_id: sKamnik3.id, hrana_id: hrana_fruit.id})
