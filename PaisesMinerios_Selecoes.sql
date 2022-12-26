# 1 - Um relatório que mostra todos os países de um continente, informando o nome do país, sua capital e moeda oficial.

#select * from Paises where continente_id = 1;

# 2 - O total de silício produzido na década de 2010 de cada país. 

#select NomeP, Toneladas from Paises 
#join Producao on Paises.P_id = Producao.pais_id 
#and (select sum(Toneladas) from Producao)
#where Ano between '2010' and '2019' and Min_id = 1
#group by pais_id;

#3 - Todos os países que em 2019 registraram produção de ferro entre 2000000 e 5000000 de toneladas. 

#select NomeP, Toneladas from Paises 
#join Producao on Paises.P_id = Producao.pais_id
#where Ano =2019 and Min_id= 2 and Toneladas between '2000000' and '5000000';

# 4 - Todos os continentes informando seu nome, área e quantidade vulcões ativos.

#select * from Continente;

# 5 - O pais com maior produção de bauxita em 2011. 
#select NomeP, Toneladas, NomeM from Paises 
#join Producao on Paises.P_id = Producao.pais_id
#join Minerios on Minerios.M_id = Producao.Min_id 
#where Ano =2011 and Min_id =3 and (select max(Toneladas) from Paises)
#order by Toneladas desc limit 1;

#6 - A média mundial de produção de diamante em 2012.

#select avg (Toneladas) from Producao where Min_id= 4 and Ano= 2012;

#7 - O minério com maior produção em 2018. 

#select NomeM, Toneladas 
#from Minerios 
#join Producao on Minerios.M_id = Producao.Min_id
#where Ano= 2018 and (select Max(Toneladas) from Producao) order by Toneladas desc limit 1;

#8 - A média de produção de cada minério em 2014.

#select NomeM, Toneladas from Producao 
#join Minerios on Producao.Min_id = Minerios.M_id 
#where Ano =2014 and (select avg(Toneladas) from Producao) 
#group by Min_id;

#9 - Todos os países que o nome termina com 'istão' ou 'lândia'.(nao consigo fazer os dois ou um ou outro)

#select NomeP from Paises where (NomeP like '%istao%' or NomeP like '%landia%');

#10 - Todos os países que produzem ouro e tungstênio no ano passado bem como as quantidades.

#select NomeP,NomeM, Toneladas from Paises 
#join Producao on Paises.P_id = Producao.pais_id
#join Minerios on Minerios.M_id = Producao.Min_id 
#where Ano =2019 and Min_id in(5,6);




