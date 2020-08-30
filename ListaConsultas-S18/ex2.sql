SELECT sala.cod_pred, num_sala, descricao_sala, capacidade_sala
FROM predio, sala
WHERE predio.cod_pred = sala.cod_pred
AND nome_pred = 'Informatica - aulas';