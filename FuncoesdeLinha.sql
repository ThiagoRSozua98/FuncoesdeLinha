use produto;
go

select * from secao
go

select * from produto
go

select * from preco_produto
go

select dsc_produto, len (dsc_produto) as 'Total de CAracteres'
from produto;
go

select dsc_produto, lower (dsc_produto) as 'Nome Curso em Minusculo'
from produto;
go

select dsc_produto, upper (dsc_produto) as 'Nome curso em Maisculo'
from produto;
go

select dsc_produto, LEFT (dsc_produto, 3) as 'LEFT - Descri��o Produto'
from produto;
go

select dsc_produto, RIGHT (dsc_produto, 4) as 'RIGHT - Descri��o Produto'
from produto;
go

select dsc_produto, RIGHT (LTRIM(dsc_produto),1) as 'RIGHT/LTRIM - Descri��o Produto'
from produto;
go

select dsc_produto, RIGHT (RTRIM(dsc_produto),3) as 'RIGHT/RTRIM - Descri��o Produto'
from produto
go

/* Fun��es de Datas*/

select getdate()					as 'Data Atual';
go

select datepart(year,getdate())		as 'Ano Atual';
go

select datepart(month,getdate())	as 'M�s Atual';
go

select datepart(day,getdate())		as 'Dia Atual';
go

select datepart(hour,getdate())		as 'Hora Atual';
go

select datepart(minute,getdate())	as 'Minutos Atual';
go

select datepart(second,getdate())	as 'Segundo Atual';
go

select datepart(weekday,getdate())	as 'Dia da semana Atual';
go

select datepart(year, dat_inivigencia) 'Ano da data de vig�ncia'
from preco_produto;
go

select datepart(month,dat_inivigencia) 'M�s da data de vig�ncia'
from preco_produto;
go

select datepart(day,dat_inivigencia)   'Dia da data vig�ncia', dat_inivigencia
from preco_produto;
go

select datepart(dayofyear, dat_inivigencia) 'Dia do ano da data de vig�ncia'
from preco_produto;
go

select datepart(week,dat_inivigencia)		'Semana da data de vig�ncia'
from preco_produto;
go

select datediff(day,dat_inivigencia,getdate()) 'Dias corridos', getdate() ' Data atual',
					dat_inivigencia ' Data vig�ncia produto'
from preco_produto;
go

/* Arredondamento Universal */

select round (45.925, 2) as 'Arredondamento acima',
	   round (45.923, 2) as 'Arredondamento para baixo',
	   round (45.923, 0) as 'Arredondamento na 2a casa da m�lhar',
	   round (45.923, 1) as 'Arredondamento na centena',
	   round (44.923,-1) as 'Arredondamento na m�lhar para abaixo',
	   round (45.923,-1) as 'Arredondamento na m�lhar acima';
go


/* fun��es de usu�rio do sistema */

select * FROM sysusers;
go
select USER_NAME();
go
select name FROM sysusers WHERE name = USER_NAME(1);
go
select name FROM sysusers WHERE name = USER_NAME(3);
go


/* Usu�rio logado no BD */


select system_user;

declare @sys_usr char (30);
set @sys_usr = system_user;
select ' O usu�rio logado no BD �: ' + @sys_usr;


/* SUSER_NAME ( [ server_user_id ] )  */

select SUSER_NAME ()
select SUSER_ID(1)

 

