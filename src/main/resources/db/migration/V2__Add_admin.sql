insert into sweater.usr (id, username, password, active)
values (1, 'admin', '123', true);
insert into sweater.user_role(user_id, roles) values(1, 'ADMIN'), (1, 'USER');