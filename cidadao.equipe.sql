-- ------------------------------- --
-- ------------------------------- --
-- Base de Dados E-SUS             --
-- 								   --
-- Christian Herber dos Santos 	   --
-- Analista de Sistemas			   --
-- christianherbersantos@gmail.com --
-- ------------------------------- --
-- ------------------------------- --

-- ------------------ --
-- Cidadão por Equipe --
-- ------------------ --
select
equipe.nu_ine as "INE DA EQUPE",
equipe.no_equipe as "NOME DA EQUIPE",
cidadao.co_cidadao as "COD DO CIDADAO",
cidnome.no_cidadao as "NOME DO CIDADAO",
cidnome.nu_cpf as "CPF DO CIDADAO",
cidnome.dt_nascimento  as "DATA DE NASCIMENTO"
from tb_equipe equipe
inner join tb_cidadao_vinculacao_equipe cidadao
on cidadao.nu_ine = equipe.nu_ine 
inner join tb_cidadao cidnome
on cidnome.co_seq_cidadao = cidadao.co_cidadao 
where equipe.nu_ine = '0000452599' -- Filtrar pelo INE da Equipe
group by
equipe.nu_ine,
equipe.no_equipe,
cidadao.co_cidadao,
cidnome.no_cidadao,
cidnome.nu_cpf,
cidnome.dt_nascimento
order by cidadao.co_cidadao