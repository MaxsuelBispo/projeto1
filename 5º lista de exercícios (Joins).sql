#Joins (INNER JOIN; LEFT JOIN)

use eleicoes_2022;

#1

SELECT 
    nm_candidato, ds_bem_candidato, vlr_bem_candidato
FROM
    tb_candidatos c
        INNER JOIN
    tb_bens_candidatos b ON c.sq_candidato = b.sq_candidato
LIMIT 10000000;


#2

SELECT 
    nm_candidato, ds_bem_candidato, vlr_bem_candidato
FROM
    tb_candidatos c
        INNER JOIN
    tb_bens_candidatos b ON c.sq_candidato = b.sq_candidato
WHERE
    b.vlr_bem_candidato > 20000000;
    

#3

SELECT 
    nm_candidato, ds_bem_candidato, vlr_bem_candidato
FROM
    tb_candidatos c
        INNER JOIN
    tb_bens_candidatos b ON c.sq_candidato = b.sq_candidato
WHERE
    c.nm_candidato like 'João%';
    
    
#4

SELECT 
    nm_candidato, SUM(qt_votos) total_votos
FROM
    tb_candidatos c
        LEFT JOIN
    tb_boletins_urnas b ON c.sq_candidato = b.sq_candidato
GROUP BY nm_candidato
ORDER BY total_votos DESC;


#5

SELECT 
    nm_candidato, SUM(qt_votos) total_votos
FROM
    tb_candidatos c
        INNER JOIN
    tb_boletins_urnas b ON c.sq_candidato = b.sq_candidato
GROUP BY nm_candidato;


#6

SELECT 
    nm_candidato, SUM(qt_votos) total_votos, ds_cargo
FROM
    tb_candidatos c
        INNER JOIN
    tb_boletins_urnas b ON c.sq_candidato = b.sq_candidato
WHERE
    ds_cargo = 'Presidente'
GROUP BY nm_candidato;


#7

SELECT 
    nm_candidato, SUM(qt_votos) total_votos, ds_cargo
FROM
    tb_candidatos c
        INNER JOIN
    tb_boletins_urnas b ON c.sq_candidato = b.sq_candidato
WHERE
    nm_candidato like '%Bolsonaro%'
GROUP BY nm_candidato;


#8

SELECT 
    nm_candidato, SUM(qt_votos) total_votos, ds_cargo
FROM
    tb_candidatos c
        INNER JOIN
    tb_boletins_urnas b ON c.sq_candidato = b.sq_candidato
WHERE
    nr_cpf_candidato like '%7068093868%'
GROUP BY nm_candidato;

