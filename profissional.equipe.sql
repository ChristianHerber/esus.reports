-- ------------------------------- --
-- ------------------------------- --
-- Base de Dados E-SUS             --
-- 								   --
-- Christian Herber dos Santos 	   --
-- Analista de Sistemas			   --
-- christianherbersantos@gmail.com --
-- ------------------------------- --
-- ------------------------------- --

-- ----------------------- --
-- Profissional por Equipe --
-- ----------------------- --
select
equipe.nu_ine as "INE DA EQUPE",
equipe.no_equipe as "NOME DA EQUIPE",
profnome.no_profissional as "NOME DO PROFISSIONAL",
cbo.no_cbo as "CBO DO PROFISSIONAL"
from tb_equipe equipe
inner join tb_cds_prof profissional 
on equipe.nu_ine = profissional.nu_ine
inner join tb_dim_profissional profnome
on profnome.nu_cns = profissional.nu_cns 
inner join tb_cbo cbo 
on cbo.co_cbo_2002 = profissional.nu_cbo_2002 
where equipe.nu_ine = '0000452599' -- Filtrar pelo INE da Equipe
group by
equipe.nu_ine,
equipe.no_equipe,
profnome.no_profissional
order by equipe.nu_ine