#Sub Consulta/Sub Query/Sub Select;
#Sub Consulta Não Relacionada e Independente;

use eleicoes_2022;


#1

SELECT 
    (SELECT 
            nm_candidato
        FROM
            tb_candidatos c
        WHERE
            c.sq_candidato = b.sq_candidato) nome,
    ds_bem_candidato,
    vlr_bem_candidato
FROM
    tb_bens_candidatos b;


#2

SELECT 
    SUM(qt_votos) total_votos,
    (SELECT 
            nm_candidato
        FROM
            tb_candidatos c
        WHERE
            c.sq_candidato = b.sq_candidato) nome
FROM
    tb_boletins_urnas b
GROUP BY sq_candidato;



