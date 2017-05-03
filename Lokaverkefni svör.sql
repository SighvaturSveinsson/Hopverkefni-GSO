use 2201002860_lokaverkefni;

#A
select diskur.nafn as 'diskur', lag.nafn as 'lag' from diskur
join lag on diskur.ID = lag.ID_disks
where diskur.nafn like 'American Idiot';

#B


#C
select lag.nafn as 'lag', tegund.nafn as 'lag' from diskur
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
select

#L


#M
select

#N


#O
select

######Okkar eigin fyrirspurnir######

#1


#2


#3


#4


#5


#6


#7