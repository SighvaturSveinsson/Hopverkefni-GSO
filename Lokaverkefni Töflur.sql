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
    ID_flytjanda int,
    ID_flokks int,
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