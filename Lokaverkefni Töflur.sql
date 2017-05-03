	create schema 2201002860_lokaverkefni;
    use 2201002860_lokaverkefni;
    
    create table diskur (
    ID INT primary key auto_increment,
    Nafn Varchar(100),
    Utgafuar int,
    ID_tegundar int auto_increment,
    ID_utgefanda int auto_increment,
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
    Lengd Varchar(10),
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
    ID_flokks int auto_increment,
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
("Columbia Records"),
("Evil Ink"),
("Columbia Records");

INSERT INTO tegund (nafn)
VALUES 
("Alternative rock"),
("Symphonic rock"),
("Punk rock"),
("Heavy metal"),
("Progressive rock"),
("Alternative rock"),
("Progressive rock");

INSERT INTO flokkur (nafn)
VALUES 
("Hljómsveit"),
("Solo"),
("Hljómsveit"),
("Hljómsveit"),
("Hljómsveit"),
("Hljómsveit"),
("Hljómsveit");

INSERT INTO flytjandi (nafn, aldur, faedingardagur, Dánardagur)
VALUES 
("Coheed & Cambria", 22, 1995, NULL),
("The Dear Hunter", 12, 2005, NULL),
("Green Day", 31,1986, NULL),
("Avenged Sevenfold", 18, 1999, NULL),
("Coheed & Cambria", 22, 1995, NULL),
("Thank you scientist", 8, 2009, NULL),
("Pink Floyd", 49, 1965, 2014);

INSERT INTO lagahöfundur (nafn, aldur, faedingardagur, Dánardagur)
VALUES 
("Claudio Sanchez", 39, 2-3-1978, NULL),
("Casey Crescenzo", 33, 19-12-1983, NULL),
("Billie joe armstrong", 45, 17-2-1972, NULL),
("Matt shadows", 35 , 31-7-1981 ,NULL),
("Claudio Sanchez", 39, 12-3-1978, NULL),
("Salvatore Marrano", 23, 12-7-1994, NULL),
("Roger Waters", 73, 6-9-1943, NULL);

INSERT INTO diskur (nafn, utgafuar)
VALUES 
("Good Apollo I'm Burning Star IV Volume One. From Fear Through the Eyes of Madness", 2005),
("Act IV. Rebirth in Reprise",2015),
("American Idiot",2004),
("The Stage",2016),
("In Keeping Secrets of Silent Earth. 3",2003),
("The wall", 1978);

INSERT INTO lag (nafn, lengd, ID_disks, ID_hofundar, ID_flytjanda)
VALUES
("Welcome home", 6.14, 1, 1, 1),
("Ten speed (Of god's blood and burial)",3.46, 1, 1, 1),
("Apollo I. The writing writer", 5.15, 1, 1, 1),
("The suffering", 3.43, 1, 1, 1),

("Waves", 4.12, 2, 2, 2),
("The squeaky wheel", 4.35, 2, 2, 2),
("King of swords (Reversed)", 5.07, 2, 2, 2),
("If all goes well", 4.41, 2, 2, 2),

("American Idiot", 2.54, 3, 3, 3),
("Jesus of suburbia", 9.08, 3, 3, 3),
("Holiday", 3.52, 3, 3, 3),
("Wake me up when september ends", 4.45, 3, 3, 3),

("The Stage", 8.32, 4, 4, 4),
("God damn", 3.41, 4, 4, 4),
("Angels", 5.40, 4, 4, 4),
("Exist", 15.41, 4, 4, 4),

("In Keeping Secrets of Silent Earth. 3", 8.13, 5, 5, 5),
("Three evils", 5.11, 5, 5, 5),
("The camper Velorium I. Faint of hearts", 5.22, 5, 5, 5),
("A favor house atlantic", 3.53, 5, 5, 5),

("A Salesman's Guide to Non-Existence", 5.06, 6, 6, 6),
("Feed the horses", 6.28, 6, 6, 6),
("Blood on the Radio", 9.24, 6, 6, 6),
("My Famed Disappearing Act", 5.44, 6, 6, 6),

("In the flesh", 4.15, 7, 7, 7),
("Run like hell", 4.20, 7, 7, 7),
("Another brick in the wall pt2", 3.49, 7, 7, 7),
("Comfortly numb", 6.23, 7, 7, 7);