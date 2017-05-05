use 2201002860_lokaverkefni;

#A
select diskur.nafn as 'diskur', lag.nafn as 'lag' from diskur
join lag on diskur.ID = lag.ID_disks
where diskur.nafn like 'American Idiot';

#B


#C
select lag.nafn as 'lag', tegund.nafn as 'tegund' from diskur
join lag on diskur.ID = lag.ID_disks
join tegund on diskur.ID_tegundar = tegund.ID
where tegund.nafn like 'progressive rock';

#D


#E
select nafn, utgafuar from diskur where utgafuar > 2010;

#F


#G
select lag.nafn as lag, lag.lengd, flytjandi.nafn as flytjandi, útgefandi.Nafn as útgefandi from diskur
join lag on diskur.ID = lag.ID_disks
join flytjandi on flytjandi.ID = lag.ID_flytjanda
join útgefandi on diskur.ID_utgefanda = útgefandi.ID
order by lag.lengd DESC
limit 5;

#H


#I
select útgefandi.nafn, count(diskur.ID_utgefanda) from diskur
join útgefandi on útgefandi.ID = diskur.ID_utgefanda
group by count(diskur) DESC ;

#J


#K
select nafn from lag where nafn like 'A%';
select nafn from lag where nafn like '%s%';

#L


#M
select avg(lengd) as 'lengd í sek' from lag; 

#N


#O
select flytjandi.faedingardagur, lag.nafn from lag
join flytjandi on flytjandi.ID = lag.ID_flytjanda
order by faedingardagur ASC
limit 4;

######Okkar eigin fyrirspurnir######

#1
#Sýndu öll lög frá diskum sem byrja á 'The'
select lag.nafn as lag, diskur.nafn as diskur from lag
join diskur on diskur.ID = lag.ID_disks
where diskur.Nafn like 'the%';

#2
#Sýndu lög alla flytjenda sem eru hættir/dánir
select lag.nafn as lag, flytjandi.nafn as 'flytjandi', flytjandi.Dánardagur from lag
join flytjandi on lag.ID_flytjanda = flytjandi.ID
where flytjandi.Dánardagur is not null;

#3
#Sýndu öll lög sem eru í tegundinni 'metal'
select lag.nafn, tegund.nafn from diskur
join lag on diskur.ID = lag.ID_disks
join tegund on tegund.ID = diskur.ID_tegundar
where tegund.nafn like '%metal';

#4
#Sýndu alla diska sem hafa lag sem byrjar á 'The'
select diskur.nafn as diskur from lag
join diskur on diskur.ID = lag.ID_disks
where lag.Nafn like 'the%' group by diskur;

#5
#Sýndu lög allra lagahöfunda sem hafa 3 nöfn í nafni sínu
select lag.nafn, lagahöfundur.nafn from lag
join lagahöfundur on lagahöfundur.ID = lag.ID_hofundar
where lagahöfundur.nafn like '% % %';


#6
#


#7
#

