create table role (id bigint generated by default as identity, name varchar(255), primary key (id))
create table user_ (id bigint generated by default as identity, login varchar(255), password varchar(255), primary key (id))
create table user__roles (user_id bigint not null, roles_id bigint not null, primary key (user_id, roles_id))
alter table user__roles add constraint FKt6w07irxipmkqs0sw6ogeqsed foreign key (roles_id) references role
alter table user__roles add constraint FK7ok7xfwx6vp9dqw0wrin073sc foreign key (user_id) references user_
