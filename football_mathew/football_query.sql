insert into game_played values(24,'Chelsea','18/10/2020','won',101);
insert into football_league values(4,'FIFA',2020);

update game_played set date='21/08/2020' where game_id=24;
update player set skill_level='average' where player_id=21;

delete from football_league where FL_id=4;

select * from game_played;

select ft.team_name, gp.opp_team_name, gp.date, gp.status from football_team ft
inner join game_played gp on gp.team_id=ft.team_id;

select fl.fl_name, t.team_name, t.team_captain from football_league fl
inner join football_team t on t.fl_id=fl.fl_id;

select count(team_id), status from game_played group by status;
select count(player_name), skill_level from player group by skill_level;

select team_id from football_team union select team_id from game_played;

insert into player values(25,'mickey','average','fullback',101);