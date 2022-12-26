drop database if exists PaisesMinerios;
create database PaisesMinerios;
use PaisesMinerios; 

create table Continente (
  C_id					int				primary key			auto_increment,
  NomeC              	varchar(60) 	not null,
  Area              	float 			not null,
  Qtd_Vulcoes_Ativos 	int 		    not null
);

create table Paises (
  P_id 					int				primary key			auto_increment,
  NomeP 				varchar(60) 	not null,
  Capital 				varchar(60)		not null, 
  Moeda 				varchar(60)		not null,
  continente_id 		int  			references Continente(C_id)
); 

create table Minerios (
  M_id 			        int				primary key			auto_increment,
  NomeM                 varchar(60)
);

create table Producao (
  Min_id				int				not null	references Minerios(M_id),
  Toneladas 			float 		    not null   check (Toneladas > 0),
  Ano 					int		        not null,
  pais_id 				int 			not null	references Paises(P_id)
  );
  

insert into Continente (C_id, NomeC, Area, Qtd_Vulcoes_Ativos) values
(1, "Asia", 44.58, 3),
(2, "AmericaDoNorte", 24.71, 6),
(3, "Oceania", 8.526, 9);

insert into Paises (P_id, NomeP, Capital, Moeda, continente_id) values
(1, 'Tailandia', 'Bangkok', 'Baht', 1),
(2, 'Tajiquistao', 'Dushanbe', 'Somoni', 1),
(3, 'Afeganistao', 'Kabul', 'Afegane', 1),
(4, 'Paquistao', 'Islamabade', 'Rupia', 1),
(5, 'EUA', 'Washington', 'Dollar', 2),
(6, 'Canada', 'Ottawa', 'DolarCanadense', 2),
(7, 'Groelandia', 'Nuuk', 'CoroaDinamarquesa', 2),
(8, 'Australia', 'Camberra', 'DolarAustraliano', 3),
(9, 'Nova Zelandia', 'Wellington', 'DolarNeozelandes', 3),
(10, 'Fiji', 'Suva', 'DolarDeFiji', 3);

insert into Minerios (M_id, NomeM) values 
(1, 'silicio'),
(2, 'ferro'),
(3, 'bauxita'),
(4, 'diamante'),
(5, 'ouro'), 
(6, 'tungstenio'),
(7, 'aluminio'),
(8, 'niquel'),
(9, 'estanho'),
(10, 'manganes'),
(11, 'cobre'),
(12, 'hematita'),
(13, 'nióbio'),
(14, 'pirita'),
(15, 'berilo');

insert into Producao (Min_id, Toneladas, Ano, pais_id) values

(8, 30, 2014, 3),
(8, 30, 2014, 5),
(7, 20, 2014, 8),
(7, 20, 2014, 9),
(1, 20, 2014, 1),
(1, 20, 2014, 1),
(1, 10, 2014, 2),
(1, 10, 2011, 2),
(2, 4000000, 2019, 3),
(2, 3000000, 2019, 4),
(3, 10, 2011, 5),
(3, 20, 2011, 6),
(4, 10, 2012, 7),
(4, 10, 2012, 8),
(12, 10, 2018, 9),
(14, 20, 2018, 10),
(5, 10, 2019, 3),
(6, 10, 2019, 4);


