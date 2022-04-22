create table if not exists Performers (
	id serial primary key,
	Name varchar(40) not null
);

create table if not exists Albums (
	id serial primary key,
	Title varchar(80) not null,
	Date date,
	PerformerID integer references Performers(id)
);

create table if not exists Tracks (
	id serial primary key,
	Title varchar(80) not null,
	Duration varchar(8),
	AlbumID integer references Albums(id)
);

create table if not exists Genres (
	id serial primary key,
	Title varchar(80) not null
);

alter table Performers add column Genre integer references Genres(id);
