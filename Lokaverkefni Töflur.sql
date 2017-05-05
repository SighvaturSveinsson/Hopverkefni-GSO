	create schema 2201002860_lokaverkefni;
    use 2201002860_lokaverkefni;
    
    create table diskur (
    ID INT primary key auto_increment,
    Nafn Varchar(100),
    Utgafuar int,
    ID_tegundar int,
    ID_utgefanda int,
    foreign key(ID_tegundar) references tegund(ID),
	foreign key(ID_utgefanda) references útgefandi(ID)
    );
    
    create table tegund (
    ID INT primary key auto_increment, 
    Nafn Varchar(100)
    );
    
    create table útgefandi (
    ID INT primary key auto_increment,
    Nafn Varchar(100)
    );
    
	create table lag (
    ID INT primary key auto_increment,
    Nafn Varchar(100),
    Lengd int,
    ID_flytjanda int,
    ID_hofundar int,
    ID_disks int,
    foreign key(ID_flytjanda) references flytjandi(ID),
    foreign key(ID_hofundar) references lagahöfundur(ID),
	foreign key(ID_disks) references diskur(ID)
    );
    
	create table lagahöfundur (
    ID INT primary key auto_increment,
    Nafn Varchar(100),
    Aldur int,
    Faedingardagur int,
    flytjandi int,
    Dánardagur int
    );
    
	create table flytjandi (
    ID INT primary key auto_increment,
    Nafn Varchar(100),
	Aldur int,
    Faedingardagur int,
    Dánardagur int,
    ID_flokks int,
    foreign key(ID_flokks) references flokkur(ID)
    );
    
	create table flokkur (
    ID INT primary key auto_increment,
    Nafn Varchar(100)
    );
    
    
INSERT INTO útgefandi (nafn)
VALUES 
("Columbia Records"),
("Equal Vision Records"),
("Reprise Records"),
("Capitol Records"),
("Evil Ink");

INSERT INTO tegund (nafn)
VALUES 
("Alternative rock"),
("Symphonic rock"),
("Punk rock"),
("Heavy metal"),
("Progressive rock");

INSERT INTO flokkur (nafn)
VALUES 
("Hljómsveit"),
("Solo");

INSERT INTO flytjandi (nafn, aldur, faedingardagur, Dánardagur, ID_flokks)
VALUES 
("Coheed & Cambria", 22, 1995, NULL, 1),
("The Dear Hunter", 12, 2005, NULL, 2),
("Green Day", 31,1986, NULL, 1),
("Avenged Sevenfold", 18, 1999, NULL, 1),
("Coheed & Cambria", 22, 1995, NULL, 1),
("Thank you scientist", 8, 2009, NULL, 1),
("Pink Floyd", 49, 1965, 2014, 1);

INSERT INTO lagahöfundur (nafn, aldur, faedingardagur, Dánardagur)
VALUES 
("Claudio Sanchez", 39, 2-3-1978, NULL),
("Casey Crescenzo", 33, 19-12-1983, NULL),
("Billie joe armstrong", 45, 17-2-1972, NULL),
("Matt shadows", 35 , 31-7-1981 ,NULL),
("Claudio Sanchez", 39, 12-3-1978, NULL),
("Salvatore Marrano", 23, 12-7-1994, NULL),
("Roger Waters", 73, 6-9-1943, NULL);

INSERT INTO diskur (nafn, utgafuar, ID_tegundar, ID_utgefanda)
VALUES 
("Good Apollo I'm Burning Star IV Volume One. From Fear Through the Eyes of Madness", 2005, 1, 1),
("Act IV. Rebirth in Reprise",2015, 2, 2),
("American Idiot",2004, 3, 3),
("The Stage",2016, 4, 4),
("In Keeping Secrets of Silent Earth. 3",2003, 1, 1),
("Maps of Non-Existent Places", 2012, 5, 5),
("The wall", 1978, 5, 1);

INSERT INTO lag (nafn, lengd, ID_disks, ID_hofundar, ID_flytjanda)
VALUES
("Welcome home", 374, 1, 1, 1),
("Ten speed (Of god's blood and burial)",226, 1, 1, 1),
("Apollo I. The writing writer", 315, 1, 1, 1),
("The suffering", 223, 1, 1, 1),

("Waves", 252, 2, 2, 2),
("The squeaky wheel", 275, 2, 2, 2),
("King of swords (Reversed)", 307, 2, 2, 2),
("If all goes well", 281, 2, 2, 2),

("American Idiot", 174, 3, 3, 3),
("Jesus of suburbia", 548, 3, 3, 3),
("Holiday", 232, 3, 3, 3),
("Wake me up when september ends", 285, 3, 3, 3),

("The Stage", 512, 4, 4, 4),
("God damn", 221, 4, 4, 4),
("Angels", 540, 4, 4, 4),
("Exist", 941, 4, 4, 4),

("In Keeping Secrets of Silent Earth. 3", 493, 5, 5, 5),
("Three evils", 311, 5, 5, 5),
("The camper Velorium I. Faint of hearts", 322, 5, 5, 5),
("A favor house atlantic", 233, 5, 5, 5),

("A Salesman's Guide to Non-Existence", 306, 6, 6, 6),
("Feed the horses", 388, 6, 6, 6),
("Blood on the Radio", 564, 6, 6, 6),
("My Famed Disappearing Act", 344, 6, 6, 6),

("In the flesh", 255, 7, 7, 7),
("Run like hell", 260, 7, 7, 7),
("Another brick in the wall pt2", 229, 7, 7, 7),
("Comfortly numb", 383, 7, 7, 7);