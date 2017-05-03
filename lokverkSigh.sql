use 2201002860_lokaverkefni;

select * from lag;

select * from flytjandi;


-- b
select lag.nafn, flytjandi.nafn as flytjandi 
from lag
inner join flytjandi
on lag.ID_flytjanda = flytjandi.ID;

-- d
select nafn, lengd from lag
where Lengd > 5;

-- f asd
select diskur.nafn as 'nafn disks', flytjandi.nafn as 'nafn flytjanda', diskur.utgafuar, útgefandi.nafn as 'nafn utgefanda' from lag
inner join flytjandi
on lag.ID_flytjanda = flytjandi.ID
inner join diskur
on lag.ID_disks = diskur.ID
inner join útgefandi
on diskur.ID_utgefanda = útgefandi.id
order by útgefandi.nafn ASC
limit 6;

-- h


-- j
select diskur.nafn, tegund.nafn from diskur
inner join tegund
on diskur.ID_tegundar = tegund.id
;

-- L
select nafn, aldur from flytjandi;

select flytjandi.nafn, count(lag.nafn) as 'fj laga' from flytjandi
inner join lag
on flytjandi.ID = lag.ID_flytjanda
where count(lag.nafn) > 4;

