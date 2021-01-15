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

INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (1, 4, "gel douche peau irritée", "gel douche naturelle 60 ml à base de beurre de cocoa et karité pour peau séche et irrité","https://media.thebodyshop.com/i/thebodyshop/COCONUT_SHOWER_CREAM_60ML_1_INRSDPS386.jpg?$product-zoom$", 5);
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (2, 2, "Crème hydratante pour les mains", "crème hydratation longue durée 75 ml texture fine et légère s'utilise à tout moment dans la journée est sans huile minérale, sans silicone et 93% de ses ingrédients sont d'origine naturelle.", "https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h47/h4c/11949468221470/yr.pimg.85927-1-YR-x500s.jpg", 4);
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (3, 2, "Crème de nuit visage hydratante", "crème correctrice confort nuit 50 ml, toute peau, 96% d'ingrédients sont d'origine naturemme, sans huile minérale, le pot est en verre recyclable, 95% des femmes constatent une réductions des rudes et 90% constate plus de fermeté.", "https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h7e/h77/10337138966558/yr.pimg.75822-1-YR-x500s.jpg", 30);
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (4, 2, "Crème de jour visage hydratante", "crème correctrice pour toutes peaux 50 ml, hydrate et sublime, est composée de 95% d'ingrédients d'origine naturelle, est sans huile minérale, pot en verre recyclable, rendu : texture hydratante au fini poudré qui révèle une peau soyeuse et veloutée.","https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h73/h07/10337106264094/yr.pimg.71765-e-YR-x500s.jpg", 35);
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (5, 2, "Crème soin jour/nuit Fermeté intense et coorecteur de rides", "crème hydratante de 75 ml avec 89% d'ingrédients d'origine naturelle, est Vegan, sans huile minérale et pt en verre recyclable.", "https://w12.yves-rocher-statics.com/medias/sys_master/retina/images/h88/h2b/9797381259294/yr.pimg.51063-1-YR-x500s.jpg", 35);
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (6, 2, "Crème de soin restructurant nuit + anti-pollution", "crème pour tout type de peau de 50 ml texture onctueuse qui nourrit et régénère la peau pendant le sommeil, sans effet gras, cintient 92% d'ingrédients d'origine naturelle, Vegan, sans huile minérale et peau en verre recyclable.","https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/h02/hf4/10243988258846/yr.pimg.05053-1-YR-x500s.jpg", 25);
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (7, 2, "Soin illuminateur regard", "tube rouleau Soin de 15 ml illumine le regard et corrige les signes de l'âge, texture de gel frais, contient 94% d'ingrédients d'origine naturelle, Vegan, sans huiles minérales.", "https://w13.yves-rocher-statics.com/medias/sys_master/retina/images/h26/hde/10337139949598/yr.pimg.73549-1-YR-x500s.jpg", 15);
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (8, 2, "Supra essence correctrice", "Bouteille pipette, d'essence correctrice de 50 ml, peau intensément renouvelée et corrige les signes de l'âge.", "https://w11.yves-rocher-statics.com/medias/sys_master/retina/images/h83/h14/10337105936414/yr.pimg.71081-e-YR-x500s.jpg", 20);
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (9, 4, "")
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (10, )
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (11, )
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (12, )
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (13, )
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (14, )
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (15, )
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (16, )
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (17, )
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (18, )
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (19, )
INSERT INTO `item`(id_item, id_category, name_item, description_item, image_item, price) VALUES (20, )