use 2201002860_lokaverkefni;

#A
select diskur.nafn as 'diskur', lag.nafn as 'lag' from diskur
join lag on diskur.ID = lag.ID_disks
where diskur.nafn like 'American Idiot';

#B
select lag.nafn, flytjandi.nafn as flytjandi 
from lag
inner join flytjandi
on lag.ID_flytjanda = flytjandi.ID
where flytjandi.nafn like 'Coheed & Cambria';

#C
select lag.nafn as 'lag', tegund.nafn as 'lag' from diskur
join lag on diskur.ID = lag.ID_disks
join tegund on diskur.ID_tegundar = tegund.ID
where tegund.nafn like 'progressive rock';

#D
select nafn, lengd from lag
where Lengd > 300;

#E
select nafn, utgafuar from diskur where utgafuar > 2010;

#F
select diskur.nafn as 'nafn disks', tegund.nafn as 'nafn flytjanda', diskur.utgafuar, útgefandi.nafn as 'nafn utgefanda' from diskur
inner join tegund
on diskur.ID_tegundar = tegund.id
inner join útgefandi
on diskur.ID_utgefanda = útgefandi.id
order by útgefandi.nafn ASC
limit 2;

#G
select lag.nafn as lag, lag.lengd, flytjandi.nafn as flytjandi, útgefandi.Nafn as útgefandi from diskur
join lag on diskur.ID = lag.ID_disks
join flytjandi on flytjandi.ID = lag.ID_flytjanda
join útgefandi on diskur.ID_utgefanda = útgefandi.ID
order by lag.lengd DESC
limit 5;

#H
select tegund.nafn as 'tegund', count(diskur.nafn) from diskur
inner join tegund
on diskur.ID_tegundar = tegund.ID
group by tegund.nafn
order by count(diskur.nafn) DESC
limit 2;

#I
select útgefandi.nafn, count(diskur.ID_utgefanda) from diskur
join útgefandi on útgefandi.ID = diskur.ID_utgefanda
group by útgefandi.nafn
order by count(diskur.ID_utgefanda) ASC
limit 4;

#J
select diskur.nafn as 'diskur', diskur.Utgafuar, tegund.nafn as 'tegund', útgefandi.nafn as 'útgefandi' from diskur
inner join tegund
on diskur.ID_tegundar = tegund.id
inner join útgefandi
on diskur.ID_utgefanda = útgefandi.id
where diskur.Utgafuar > 1998
group by útgefandi.nafn;

#K
select nafn from lag where nafn like 'A%';
select nafn from lag where nafn like '%s%';

#L
select nafn, aldur from flytjandi;

#M
select avg(lengd) as 'lengd í sek' from lag; 

#N
select flytjandi.nafn, count(lag.nafn) as 'fj laga' from flytjandi
inner join lag
on flytjandi.ID = lag.ID_flytjanda
group by flytjandi.nafn
order by count(lag.nafn) DESC
limit 1;

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
#Sýnið nafn laga sem hafa () í nafninu og hver flytur þau
select lag.nafn as 'nafn laga', flytjandi.Nafn as 'flytjandi' from lag
inner join flytjandi
on lag.ID_flytjanda = flytjandi.ID
where lag.nafn like '%(%';

#7
#Sýnið all flytjendur sem eru minna en 17 ára og hvaða flokk flytjandi er
select flytjandi.nafn, flokkur.Nafn as 'flokkur' from flytjandi
inner join flokkur
on flytjandi.ID_flokks = flokkur.id
where flytjandi.Faedingardagur > 2000;

