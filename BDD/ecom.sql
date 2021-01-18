CREATE DATABASE ecom;

USE ecom;

create table client (
	id INT(11) NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50) UNIQUE,
    password_client VARCHAR(100),
    phone VARCHAR(20),
	PRIMARY KEY (id)
);

create table `order` (
	id_order INT(11) NOT NULL AUTO_INCREMENT,
	id_client INT(11),
	paid TINYINT(1),
	PRIMARY KEY (id_order),
	FOREIGN KEY (id_client) REFERENCES client(id)
);

create table category (
    id_category INT(11) NOT NULL AUTO_INCREMENT,
    name_category VARCHAR(45),
    PRIMARY KEY (id_category)
);

create table item(
    id_item INT(11) NOT NULL AUTO_INCREMENT,
    id_category INT(11),
    name_item VARCHAR(45),
    description_item text,
    image_item VARCHAR(150),
    price FLOAT,
    PRIMARY KEY (id_item),
    FOREIGN KEY (id_category) REFERENCES category(id_category)
);

create table content_order(
    id_order INT(11),
    id_item INT(11),
    quantity INT(11),
    PRIMARY KEY (id_order, id_item),
    FOREIGN KEY (id_order) REFERENCES `order`(id_order),
    FOREIGN KEY (id_item) REFERENCES item(id_item)
);

create table payment_method(
    id_paymentMethod INT(11) NOT NULL AUTO_INCREMENT,
    method VARCHAR(45),
    value VARCHAR(45),
    id_client INT(11),
    PRIMARY KEY (id_paymentMethod),
    FOREIGN KEY (id_client) REFERENCES client(id) 
);

create table payment(
    id_payment INT(11) NOT NULL AUTO_INCREMENT,
    total_ht FLOAT,
    tva FLOAT,
    id_order INT(11),
    id_paymentMethod INT (11),
    PRIMARY KEY (id_payment),
    FOREIGN KEY (id_order) REFERENCES `order`(id_order),
    FOREIGN KEY (id_paymentMethod) REFERENCES payment_Method(id_paymentMethod)
);

create table ordered_item_snapchot(
    id_ordered_item_snapchot INT(11) NOT NULL AUTO_INCREMENT,
    name_item VARCHAR(45),
    price FLOAT,
    category VARCHAR(45),
    id_order INT (11),
    quantity INT(11),
    PRIMARY KEY (id_ordered_item_snapchot),
    FOREIGN KEY (id_order) REFERENCES `order`(id_order)
);

INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (1,"Mark","Mcneil","molestie.sodales.Mauris@pede.net","HYR70PMQ5BA","03 20 08 55 79");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (2,"Carolyn","Mcdaniel","libero.at@fermentumconvallis.com","LSR85LAO6PB","08 92 15 37 06");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (3,"Calvin","Mcfarland","ipsum.sodales.purus@nonenim.edu","SKN40QFR0SK","08 34 36 99 33");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (4,"Zephr","Sweeney","fermentum.metus@odioNam.com","TEM77REQ1PP","08 70 56 63 41");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (5,"George","Mckee","sit.amet@magnaSuspendissetristique.com","RQK23DIA5MV","05 53 73 33 78");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (6,"Haviva","Bolton","elit@eros.com","KLG63MXY6XK","09 64 01 43 96");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (7,"Tanisha","Rodriquez","Nullam@lobortistellusjusto.ca","FTX27LBG8RU","05 23 61 81 01");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (8,"Steel","Flowers","eget@ametmassa.ca","XRM93NDQ2YI","02 54 61 27 96");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (9,"Yardley","Powers","auctor.velit@ipsumportaelit.org","WZZ30MXV8US","01 50 80 56 99");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (10,"Alyssa","Sexton","malesuada@ametultricies.co.uk","PTP10CBP5MR","01 74 99 70 09");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (11,"Hector","Suarez","Nulla.eget.metus@nondapibus.co.uk","TJX09YPQ9TW","01 59 94 04 82");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (12,"Boris","Obrien","tempus@felis.ca","CUP41BUG2UH","04 51 09 33 38");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (13,"Kalia","Ewing","mollis.nec@feugiatmetussit.org","RNB42FYT6DD","06 20 83 93 59");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (14,"Cynthia","Simmons","amet.ornare@lobortisquispede.net","TDU61ERX8KA","03 51 94 84 71");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (15,"Quintessa","Campos","ut.pharetra.sed@euismod.org","HIA69BCP7QW","02 09 52 32 32");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (16,"Ryder","Frye","urna.Nullam.lobortis@eros.co.uk","WYN07TTG9KQ","07 70 61 72 93");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (17,"Tatiana","Mcclain","arcu.iaculis@pedeblanditcongue.com","QWY56FWL3BF","07 04 57 42 82");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (18,"Savannah","Kelley","magna@semperet.co.uk","FYQ51LLJ3TG","04 43 54 64 19");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (19,"Kenyon","Davidson","ac.mattis.ornare@sagittislobortis.net","CZV76SUW4XN","02 97 96 44 31");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (20,"Sonya","Gilbert","malesuada.Integer.id@risusIn.co.uk","CAK76OTO7IV","04 41 32 43 27");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (21,"Drew","Forbes","dolor.vitae.dolor@malesuadaInteger.net","JMM85FYD3DK","03 54 88 73 20");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (22,"Hayfa","Mcmillan","quis@cubilia.ca","ZWW73GBY4QO","02 83 62 88 83");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (23,"Thor","Mcdonald","nisl.elementum.purus@Nuncsollicitudin.org","RYD71YOI9JY","08 06 45 59 29");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (24,"Linda","Murray","urna.et.arcu@nunc.com","ZUJ31KME5JJ","04 70 62 48 01");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (25,"Brock","Casey","Etiam@eratvolutpat.co.uk","XFY68ZZY7UL","07 51 64 67 62");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (26,"Whoopi","Mcleod","in.magna@Duisvolutpat.org","FYQ16YEC1HP","09 39 86 17 05");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (27,"Christopher","Stark","Vivamus.non@miAliquam.co.uk","DOH31QPP2YQ","04 14 55 31 23");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (28,"Britanni","Faulkner","ante.lectus.convallis@aclibero.ca","QUZ97NTV9WS","01 04 00 97 94");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (29,"Kato","Barber","Nullam.ut.nisi@nonvestibulumnec.com","UWU88VBQ4RE","09 05 38 30 38");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (30,"Yvonne","Talley","ut.eros.non@dictumsapienAenean.ca","UXF28SZB5EB","09 39 30 76 59");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (31,"Gail","Durham","a@facilisiSed.net","VVX12WRN5ZW","09 38 76 05 50");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (32,"Ferris","Hutchinson","diam.luctus.lobortis@commodo.edu","JRW92BWB9KW","01 25 16 15 06");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (33,"Elizabeth","Rose","vitae@atliberoMorbi.ca","AOL72BLF2VS","08 00 32 11 00");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (34,"Neve","Knight","Fusce.mollis@Cras.com","NMG73DZM4FJ","02 61 91 64 03");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (35,"Hollee","Guthrie","erat.in.consectetuer@facilisis.edu","ITX82NWA0VN","05 80 85 09 76");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (36,"Honorato","Harrison","justo.Praesent.luctus@Crassed.com","WEO15LNP2IL","02 19 54 57 19");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (37,"Dean","Leach","Maecenas.iaculis.aliquet@velit.net","FYK64UZQ7QL","02 77 98 24 93");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (38,"Dalton","Guerrero","Nullam.feugiat.placerat@ametconsectetueradipiscing.com","TDH57UKX9BO","07 24 27 27 01");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (39,"Brendan","Osborn","et.ultrices@anteNunc.edu","ZBZ71YJX5BH","01 46 79 19 57");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (40,"Debra","Joseph","Nunc@sed.org","ZPA16GLW4HX","08 54 77 73 35");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (41,"Oliver","Bridges","dignissim.tempor@Nunclectus.edu","PJZ87SLZ9GY","07 55 96 10 04");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (42,"Blaine","Webster","Mauris.ut@turpisegestasFusce.edu","VOD34XBQ2TY","04 39 03 50 91");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (43,"Martin","Schwartz","dolor.quam.elementum@Aliquamauctor.edu","JFG01OOR7CW","09 46 75 56 45");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (44,"Keegan","Fletcher","nisl.Maecenas.malesuada@etpede.com","LFQ96BGZ3VA","05 68 39 16 50");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (45,"Pearl","Michael","odio.auctor@ac.edu","MNO41XOZ3VI","02 24 24 70 01");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (46,"Phyllis","Burns","ac.mi@dolortempus.com","GNG79SGG2VJ","08 01 39 15 61");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (47,"Amela","Hopper","elit.a.feugiat@arcuVivamus.org","DHE06ZWE5NU","02 95 29 89 44");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (48,"Jaden","Huffman","mi.ac@gravidasitamet.ca","WEM83ZKI5BW","04 82 14 06 46");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (49,"Kareem","Spence","euismod@Aliquamtinciduntnunc.net","MXK19MYP4BN","01 35 20 76 54");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (50,"Ora","Gross","dolor@dolordapibusgravida.co.uk","RQW71VXQ1JZ","03 29 94 68 99");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (51,"Hedda","Brooks","Mauris@risusMorbi.org","GVX63BAB6XN","04 13 86 59 37");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (52,"Christian","Gould","ut.erat@Cumsociis.co.uk","KSY26IWL7WC","09 02 60 95 19");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (53,"Holmes","Tran","Aliquam.ultrices.iaculis@eget.com","QZE55MXI2LA","04 23 73 42 54");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (54,"Kennan","Medina","ultricies.ornare@nulla.co.uk","HIP30MIL5UZ","07 09 53 59 07");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (55,"Ivory","Randolph","Phasellus@iaculisenim.org","VIR57VYG4TP","09 66 36 02 87");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (56,"Jelani","Jacobs","est.vitae.sodales@tincidunt.co.uk","AMJ99GYD3YP","09 46 47 91 86");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (57,"Patrick","Mcgowan","et.malesuada.fames@Loremipsumdolor.co.uk","GDJ47UXM5WU","05 20 16 08 40");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (58,"Cecilia","Evans","erat.Sed@aliquam.org","NXP03NRH5NP","05 93 74 67 18");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (59,"Charde","Zimmerman","et.libero.Proin@amet.co.uk","DNY58BOV3PG","07 28 09 30 05");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (60,"Jada","Walsh","dignissim.tempor@mi.ca","XTU36MGR0UF","01 74 13 45 90");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (61,"May","Christensen","dui@idante.edu","KNR89RZJ1FF","05 09 95 06 69");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (62,"Kay","Lewis","eget@liberonec.net","TFK35AYY3CU","08 67 02 80 41");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (63,"Tanek","Hill","sed@elementumdui.ca","BXC33OFK3EY","09 10 67 61 07");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (64,"Cynthia","May","Sed@gravidanonsollicitudin.net","QLD92ZYU6SH","05 62 46 22 33");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (65,"Lars","Garner","ut.cursus.luctus@nisi.ca","DFZ74LLK2CS","05 34 46 30 66");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (66,"Ava","Butler","ornare.lectus.justo@liberoProin.com","BFB77INM3XH","02 44 22 12 59");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (67,"Jordan","George","egestas.lacinia@Aliquameratvolutpat.co.uk","JLX31OLA3EI","06 79 74 67 94");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (68,"Xanthus","Collier","magnis.dis@accumsaninterdumlibero.edu","IVU62MTD4TL","06 50 91 31 92");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (69,"Magee","Reed","scelerisque@nonlacinia.co.uk","YDE79AGO2VU","09 48 94 41 85");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (70,"Bert","Collins","tellus.non@sodalesnisi.edu","LKG70YDR7YG","05 19 22 26 95");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (71,"Keith","Giles","ut@Cum.net","MWQ01JRU7EE","02 99 73 58 67");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (72,"Rafael","Mccarty","ante@arcueuodio.org","NWK86UEJ2YZ","04 66 71 23 33");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (73,"Leilani","Harper","et.eros.Proin@consequatdolorvitae.org","HJJ07SVE3BJ","04 33 32 44 98");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (74,"Merritt","Mejia","Donec.vitae@leo.ca","WGY42WQG5CU","05 62 75 14 44");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (75,"Libby","Pacheco","ac@Cras.net","LUH05OQP7YV","05 87 76 16 43");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (76,"Darryl","Baird","lorem.vitae@Proindolor.ca","TRU56PHR7ZG","06 13 93 60 68");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (77,"Kamal","Day","ac.risus.Morbi@inmolestie.ca","OOO88DAE3NJ","02 93 90 62 65");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (78,"Porter","Hawkins","imperdiet@orciconsectetuereuismod.com","YXR45GAP3LY","02 70 57 10 63");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (79,"Diana","Acosta","magna@felis.co.uk","CGM38QZE2WS","07 53 58 90 94");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (80,"Jemima","Boyle","quis@magnisdisparturient.edu","DNJ41KXA3GB","05 26 63 66 57");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (81,"Len","Davidson","viverra@idnunc.edu","EPZ81CNR9GK","01 33 31 56 66");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (82,"Byron","Deleon","accumsan@placeratCras.co.uk","ZTZ59LEB0QB","08 83 15 69 83");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (83,"Lynn","Greene","ut@Morbi.net","XUN40HID9QX","02 09 49 30 59");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (84,"Justine","Foster","tincidunt@tellus.net","SFY44SOQ6WR","09 66 98 12 15");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (85,"Caesar","Mosley","Vestibulum@nonarcuVivamus.co.uk","KEG56XFI7LB","05 83 21 82 79");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (86,"Kerry","Pratt","Nullam.ut@eratEtiamvestibulum.ca","KUL46VBI8RX","07 60 92 59 48");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (87,"Wing","Santiago","sagittis@feugiatLoremipsum.net","FYI91WAK6YD","01 20 81 76 10");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (88,"Tyler","Mcconnell","euismod.urna@purusaccumsaninterdum.com","ZOR85XPQ0BP","06 92 84 71 54");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (89,"Caryn","Mckinney","dolor@lacusQuisque.com","QAV46ONQ6LI","05 38 45 87 37");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (90,"Chandler","Macias","pede.Suspendisse@lacus.com","VXC04MBA9TW","09 65 14 02 53");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (91,"Yoshio","Durham","luctus.et.ultrices@interdum.com","NQQ12BUQ2UU","08 94 43 91 16");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (92,"Justin","Curtis","sociis.natoque.penatibus@liberoestcongue.ca","SPD11MIZ4VV","04 95 53 08 56");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (93,"Vaughan","Nash","Donec.tempus.lorem@gravidaAliquam.com","QRS73NGM6PS","02 45 37 01 37");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (94,"Kirby","Rivas","sollicitudin.orci.sem@magna.net","EJJ34DLJ4PI","05 42 91 94 84");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (95,"Faith","Walters","Donec.egestas.Duis@nonleoVivamus.net","ABA19JQW2XY","05 37 91 02 14");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (96,"Mara","Hull","viverra.Donec@nisimagnased.com","JKO39WOV7PJ","09 85 13 52 88");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (97,"Rhiannon","Quinn","in@Integer.co.uk","KXX08TEQ6VB","06 93 59 33 86");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (98,"Lillith","Kidd","Morbi.metus.Vivamus@morbitristique.co.uk","VWT43CFF7ZX","08 03 34 52 19");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (99,"Edan","Lawson","aliquet@commodotincidunt.co.uk","CSX96VXG4ZI","01 88 15 24 56");
INSERT INTO `client` (`id`,`first_name`,`last_name`,`email`,`password_client`,`phone`) VALUES (100,"Cyrus","Hobbs","imperdiet.erat.nonummy@molestietortornibh.co.uk","JFL55KOD5PS","09 58 68 14 45");


INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (1,23,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (2,87,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (3,86,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (4,73,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (5,55,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (6,49,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (7,60,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (8,25,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (9,70,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (10,79,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (11,4,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (12,86,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (13,52,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (14,86,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (15,34,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (16,33,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (17,53,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (18,71,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (19,34,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (20,7,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (21,45,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (22,82,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (23,71,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (24,69,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (25,59,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (26,33,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (27,39,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (28,49,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (29,65,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (30,61,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (31,26,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (32,46,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (33,59,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (34,71,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (35,67,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (36,62,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (37,50,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (38,96,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (39,14,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (40,31,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (41,36,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (42,87,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (43,27,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (44,70,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (45,40,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (46,34,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (47,6,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (48,73,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (49,42,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (50,91,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (51,26,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (52,5,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (53,62,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (54,9,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (55,17,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (56,68,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (57,57,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (58,74,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (59,11,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (60,19,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (61,12,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (62,72,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (63,3,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (64,8,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (65,37,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (66,65,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (67,72,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (68,82,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (69,8,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (70,10,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (71,51,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (72,64,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (73,81,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (74,36,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (75,72,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (76,34,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (77,43,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (78,17,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (79,90,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (80,58,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (81,49,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (82,69,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (83,22,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (84,11,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (85,63,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (86,11,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (87,18,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (88,41,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (89,70,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (90,84,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (91,39,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (92,55,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (93,28,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (94,49,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (95,77,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (96,3,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (97,19,"0");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (98,65,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (99,35,"1");
INSERT INTO `order` (`id_order`,`id_client`,`paid`) VALUES (100,36,"1");

INSERT INTO `category`(id_category, name_category) VALUES (1, "Maquillages & Vernis à Ongles");
INSERT INTO `category`(id_category, name_category) VALUES (2, "Soins du visage & des mains");
INSERT INTO `category`(id_category, name_category) VALUES (3, "Soins pour cheveux");
INSERT INTO `category`(id_category, name_category) VALUES (4, "Soins du corps");
INSERT INTO `category`(id_category, name_category) VALUES (5, "Accessoires");

INSERT INTO `item` (`id_item`, `id_category`, `name_item`, `description_item`, `image_item`, `price`) VALUES
(1, 1, 'Dissolvant', 'Flocon de 100 ml, pour des ongles impeccable, respecte l/ongle et son contour, formule sans acétone pour un démaquillage tout en douceur des ongles, 86% des femmes trouvent que le dissolvant ne déssèche pas les ongles', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h95/he1/9821861576734/yr.pimg.14358-1-YR-x500s.jpg', 3),
(2, 1, 'Vernis Go Green', 'vernis de 5 ml à base d/ingrédients biosourcés de la betterave, de la canne de sucre et du bois, Vegan, formule enrichie en huile de coco et extrait de bambou, concerve toute la tenue, la couvrance et la brillance d/un vernis traditionnel, vos ongles seront parfaitement et intensément laqués, brillants et galbés, bien agiter le vernis avant utilisation.', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/hb3/hc5/12201046900766/yr.pimg.85137-1-YR-x500s.jpg', 4),
(3, 1, 'Vernis sèchage exprèsse', 'Vernis de 5 ml, alliés de toutes personnes pressés, peut-être utilisé sur tout les vernis y compris les laques effet gel, à utiliser après la fin de la manicure prélever une gouttes à l/aide du pinceau et lancez la tomber sur l/ongle, une fois le vernis sec rincez les mains pour enlever tout résidu restant, ne jamais utiliser sur un ongle sans vernis.', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/he5/hc7/12209364336670/yr.pimg.20621-1-YR-x500s.jpg', 5),
(4, 1, 'Mascara feel stronger', 'Masscara 10 ml, noir, exper volume intense, sans parfum, sans siliscone et sans alcool, appliquer de la base des cils vers la pointe avec un léger mouvement de zigzag, Testé sous contôle ophtalmologique.', 'https://w13.yves-rocher-statics.com/medias/sys_master/retina/images/h9a/h49/12351643975710/yr.pimg.93065-1-YR-x500s.jpg', 14),
(5, 1, 'Pallette Trois regard Gris', 'Pallette de voyage, 3 fards à paupière de différentes teinte de gris pour un regard intense.', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/heb/ha4/12378559283230/yr.pimg.93432-1-YR-x500s.jpg', 6),
(6, 1, 'Stylo noir waterproof', 'Stylo de 0,3g pour les yeux, de couleur noir waterproof, testé sous contrôle ophtalmologique', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/he1/h5d/12229745213470/yr.pimg.38307-1-YR-x500s.jpg', 11),
(7, 1, 'Font de teint peau parfaite', 'tube fond de teint 30 ml pour 14h défficacité pour personnes eyant le teint claire, teint parfait au grain de peau près et longue tenue.', 'https://w13.yves-rocher-statics.com/medias/sys_master/retina/images/h52/ha9/8823842275358/yr.pimg.86419-1-YR-x500s.jpg', 12),
(8, 1, 'Poudre libre floutante et fixante', 'Pot de poudre libre de 15g, à poser après le fond de teint pour un teint naturellement matifié et sans effet masque, contient 89% d/ingrédients d/origine naturelle et Vegan.', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h25/h82/12351551569950/yr.pimg.86738-1-YR-x500s.jpg', 11),
(9, 1, 'Correcteur peau parfaite', 'tube 1,4g anti-cerne pour teint claire, très pratique, format stick à l/embout biseauté garantit une application uniforme pour une précision optimale ou une retouche en cours de journée.', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/h22/h54/8823810719774/yr.pimg.82644-2-YR-x500.jpg', 6),
(10, 2, 'Crème hydratante pour les mains', 'crème hydratation longue durée 75 ml texture fine et légère s/utilise à tout moment dans la journée est sans huile minérale, sans silicone et 93% de ses ingrédients sont d/origine naturelle.', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h47/h4c/11949468221470/yr.pimg.85927-1-YR-x500s.jpg', 4),
(11, 2, 'Crème de nuit visage hydratante', 'crème correctrice confort nuit 50 ml, toute peau, 96% d/ingrédients sont d/origine naturemme, sans huile minérale, le pot est en verre recyclable, 95% des femmes constatent une réductions des rudes et 90% constate plus de fermeté.', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h7e/h77/10337138966558/yr.pimg.75822-1-YR-x500s.jpg', 30),
(12, 2, 'Crème de jour visage hydratante', 'crème correctrice pour toutes peaux 50 ml, hydrate et sublime, est composée de 95% d/ingrédients d/origine naturelle, est sans huile minérale, pot en verre recyclable, rendu : texture hydratante au fini poudré qui révèle une peau soyeuse et veloutée.', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h73/h07/10337106264094/yr.pimg.71765-e-YR-x500s.jpg', 35),
(14, 2, 'Crème de soin restructurant anti-pollution', 'crème pour tout type de peau de 50 ml texture onctueuse qui nourrit et régénère la peau pendant le sommeil, sans effet gras, cintient 92% d/ingrédients d/origine naturelle, Vegan, sans huile minérale et peau en verre recyclable.', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/h02/hf4/10243988258846/yr.pimg.05053-1-YR-x500s.jpg', 25),
(15, 2, 'Soin illuminateur regard', 'tube rouleau Soin de 15 ml illumine le regard et corrige les signes de l/âge, texture de gel frais, contient 94% d/ingrédients d/origine naturelle, Vegan, sans huiles minérales.', 'https://w13.yves-rocher-statics.com/medias/sys_master/retina/images/h26/hde/10337139949598/yr.pimg.73549-1-YR-x500s.jpg', 15),
(16, 2, 'Supra essence correctrice', 'Bouteille pipette, d/essence correctrice de 50 ml, peau intensément renouvelée et corrige les signes de l/âge.', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/h83/h14/10337105936414/yr.pimg.71081-e-YR-x500s.jpg', 20),
(17, 3, 'Masque crème nutritif', 'masque crème 2 en 1 nutritif et ant-déssèchement de 200 ml, texture de gel crème peut-être utilisé avant ou après le shampoing sur cheveux sec ou humides, contient 95% d/ingrédients d/origines naturelle, agave cultivée en agriculture biologique, formule facilement biodégradable sans silicone, eco-tube conçu avec 25% de plastique en moins qu\'un tube standard, conseille d\'utilisation : utiliser 1 fois par semaine, sur cheveux mouiller laissez 3 minutes et rincez, sur cheveux sec laissez 10 minutes et rincez.', 'https://w13.yves-rocher-statics.com/medias/sys_master/retina/images/h04/hef/11966843748382/yr.pimg.66034-1-YR-x500s.jpg', 7),
(18, 3, 'Masque crème pour Couleur', 'masuqe crème de 200 ml, 2 en 1 répare et agis sur les 3 dommages majeur liés à la coloration, contient 95% d/ingrédients d/origines naturelle, agave cultivée en agriculture biologique, formule facilement biodégradable sans silicone, eco-tube conçu avec 25% de plastique en moins qu\'un tube standard, conseille d\'utilisation : utiliser 1 fois par semaine, sur cheveux mouiller laissez 3 minutes et rincez, sur cheveux sec laissez 10 minutes et rincez.', 'https://w13.yves-rocher-statics.com/medias/sys_master/retina/images/h02/h14/11966843420702/yr.pimg.65493-1-YR-x500s.jpg', 7),
(19, 3, 'Shampooing Lumière pure', 'tube shampooing 200 ml, embéllit les reflets de cheveux blonds platine, blancs ou gris, contient de la centaurée de La Gacilly issue de l/Agriculture Biologique, agve cultivée d/Agriculture Biologique, base lavante d/origine végétale, formule facilement biodégradable sans silicone, flacon recyclable composé à 100% de plaqtique recyclé (hors additif), conseils d\'utilisation : appliquer sur cheveux moillés, masser cuir chevelu et rincez', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/hf2/hb5/11277941440542/yr.pimg.21877-1-YR-x500s.jpg', 3),
(20, 3, 'Vinaigre de rinçage', 'flacon de 200 ml, fait briller les cheveux, ainsi que facilite la repousse en les fortifiant et les embélissants, parfum vos cheveux d/un parfum à la framboise, contint 99% d/ingrédients d/origine naturelle, agve cultivée d/Agriculture Biologique, sans silicone, formule facilement biodégradable, flacon recyclable contenant du plastique recyclé, conseil d\'application : Appliquez sur la chevelure avant la dernière eau de rinçage, rincez, en cas de contact avec les yeux rincez abondamment.', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/hfd/h08/11979757158430/yr.pimg.64871-1-YR-x500s.jpg', 5),
(21, 3, 'Après-Shampooing baume réparateur', 'flacon de 200 ml répare immédiatement et réduit la casse de 95% de vos cheveux et leur permet de repousser plus fort et plus beau, contient 99% d/ingrédients d/origine naturelle, agave cultivée en agriculture biologique, formule facilement biodégradable sans silicone, flacon recyclable composé à 100% de plastique recyclé (hors additif), conseils d\'application ; appliquer sur cheveux mouillés, massez le cuir chevelu et rincez', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h14/h73/11979757223966/yr.pimg.61731-1-YR-x500s.jpg', 3),
(22, 3, 'Sérum fortifiant', 'flacon Spray 100 ml, répare et rend les cheveux plus fort et plus beau lors de la repousse de vos cheveux, la texture est non grasse et sans silicone, contient 98% d/ingrédients d/origine naturelle, de l/agave cultivée en agriculture biologique, sans siliscone, flacon recyclable contenant du plastique recyclé, à utiliser sur cheveux sec ou humides, ne pas rincer.', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/heb/hc8/11979778490398/yr.pimg.69541-1-YR-x500s.jpg', 7),
(23, 3, 'Masque baume réparateur', 'Mini masque 35 ml, répare en profondeur : cheveux 20x plus résistants, peut-être utilisé avant ou après Shampooing, contient 98% d/ingrédients d/origine naturelle, de l/agave cultivée en agriculture biologique, c/est une formule facilement biodégradable sans silicone et est dans un eco-tube conçu avec 25% de plastique en moins qu\'un tube standard, conseils d\'utilisation : sur cheveux sec laissez 3 minutes et rincez, sur cheveux sec laissez 10 minutes et rincez.', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/hd8/h91/12109440679966/yr.pimg.94056-1-YR-x500s.jpg', 3),
(24, 4, 'Gel douche peau irritée', 'gel douche naturelle 60 ml à base de beurre de cocoa et karité pour peau séche et irrité', 'https://media.thebodyshop.com/i/thebodyshop/COCONUT_SHOWER_CREAM_60ML_1_INRSDPS386.jpg?$product-zoom$', 5),
(25, 4, 'Crème pour le corps Réparatrice', 'Baume réparateur et nutricionel pour  peaux extra sèches et abîmés, 150 ml, texture baume fondant, sans huiles minérales, pot contentant du plastique recyclé.', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h88/hc5/9312811679774/yr.pimg.41501-1-YR-x500s.jpg', 15),
(26, 4, 'Lait Spray Protection FPS 50+', 'Spray solaire qui protège et hydrate la peau, 150 ml, texture lactée, fraîche et hydratante s/applique facilement sur tout le corps grâce à son spray, flacon recyclable et contenant du plastique recyclé, sans huiles minérale.', 'https://w13.yves-rocher-statics.com/medias/sys_master/retina/images/h77/h7f/12312597299230/yr.pimg.69393-1-YR-x500s.jpg', 12),
(27, 4, 'Gel douche Vanille & Bourbon', 'gel douche 400 ml à la vanille et au bourbon, contenant 91% d/ingrédients naturelle, sans savon, formule facilement biodégradable, flacon recylable, laisse une peau parfumée.', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/hac/h93/10220315017246/yr.pimg.34461-1-YR-x500s.jpg', 5),
(28, 4, 'Lait pour le corps réparateur', 'lait de karité répare et nourit les peaux extra sèches, 200 ml, répare et nourrit la peau extra sèche tout en la parfumant, contient 88% d/ingrédients d/origines naturelle, beurre de karité bio venant de la filière d/afrique de l/ouest, eco tube avec 25% de plastique en moins qu\'un tube standard, sans huile minérale', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/h79/hd9/12351477776414/yr.pimg.29834-1-YR-x500s.jpg', 5),
(29, 4, 'Douche surgras Karité', 'tube pour la douche de 200 ml qui réconforte et nourit la peau, protège du desséchement, sa texture est riche et enveloppante, contient 92% d/ingrédients d/origine naturelle, du beurre de karité bio provenant d/Afrique de l/Ouest, 2/3 d/huiles végétales, eco-tube avec 25% de plastique en moins qu\'un tube standard, sans huiles minérale, formule testé sous controle dermatologique.', 'https://w13.yves-rocher-statics.com/medias/sys_master/retina/images/h4d/hae/12915409387550/yr.pimg.00776-1-YR-x500s.jpg', 6),
(30, 4, 'Gommage végétal à l/abricot', 'Gommage 150 ml, lisse la peau elle est comme régénérée ainsi que parfumé à l/abricot, contient 98% d/ingrédients d/origine naturelle, grains 100% végétaux, formule facilement biodégradable, à utiliser une à deux fois par semaines.', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h3c/h98/12268015550494/yr.pimg.44138-1-YR-x500s.jpg', 5),
(31, 4, 'Gommage végital au karité', 'tube gommage de 150 ml au karité, enveloppé par la richesse la peau retrouve confort et douceur, contient 98% d/ingrédients d/origine naturelle, grains 100% végétaux, formule facilement biodégradable, à utiliser une à deux fois par semaines.', 'https://w13.yves-rocher-statics.com/medias/sys_master/retina/images/h63/hf0/12268025839646/yr.pimg.42898-1-YR-x500s.jpg', 6),
(32, 5, 'Sépare Orteils', 'duo de sépare orteils pour facilité la pause du vernis pendant une pédicure, produit fais en mousse.', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/hc0/h25/8824914739230/yr.pimg.09707-1-YR-x500s.jpg', 2),
(33, 5, 'kit limes à ongles', 'kit de 6 limes à ongles dont trois pour le voyage et de force de lime différentes', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h72/hee/8824931450910/yr.pimg.19944-1-YR-x500s.jpg', 2),
(34, 5, 'bloc polissoir 4 faces', '4 polissoir pour une manucure parfaites pour différent stade.', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/h88/h21/8824948817950/yr.pimg.19169-1-YR-x500s.jpg', 3),
(35, 5, 'lingettes démaquillantes', '20 lingettes démaquillantes pour tout types de peaux pour visage et yeux, non parfumé.', 'https://w13.yves-rocher-statics.com/medias/sys_master/retina/images/hdc/hd4/9232245162014/yr.pimg.24078-1-YR-x500s.jpg', 3),
(36, 5, 'éponge physionomiste', 'éponge professionnelle pour un teint zéro défault pendant la pause du fond de teint', 'https://w13.yves-rocher-statics.com/medias/sys_master/retina/images/h19/h65/10195220693022/yr.pimg.40616-1-YR-x500s.jpg', 6),
(37, 5, 'Démaquillant express yeux', 'flacon démaquillant en verre de 100 ml, élimine le maquillage, même waterproof', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h8f/hb3/8991265619998/yr.pimg.45024-1-YR-x500s.jpg', 7),
(38, 5, 'coupe ongles', 'couples ongles puissant pour des ongles bien coupé peut-être utilisé sur tout type d/ongles', 'https://w13.yves-rocher-statics.com/medias/sys_master/retina/images/h12/h5f/9140070055966/yr.pimg.44192-1-YR-x500s.jpg', 3),
(39, 5, 'taille crayon', 'double entrée pour crayon fin ou épaie pour les yeux.', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/h18/h16/8937582919710/yr.pimg.58980-1-YR-x500s.jpg', 2),
(40, 5, 'Eponges à fond de teint', 'indispensable pour appliquer un fond de teint sans poser de problème facile d/usage plus pratique pour la poudre', 'https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/h0a/hc5/10195302121502/yr.pimg.57040-1-YR-x500s.jpg', 2),
(41, 5, 'Gant démaquillant', 'Un démaquillage simple à l/eau uniquement, qui contribue au respect de la peau et de l/environnement.', 'https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/hb6/h33/9326941437982/yr.pimg.69347-1-YR-x500s.jpg', 6);
