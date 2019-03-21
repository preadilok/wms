/*
  consulta estoque dos produtos de um determinado pedido
*/

SELECT * 
FROM T_ESTOQUE 
WHERE CD_PRODUTO IN(SELECT CD_PRODUTO 
                    FROM T_DET_PEDIDO_SAIDA 
                    WHERE NU_PEDIDO_ORIGEM = "chave_criacao_pedido_bematech") 
                    AND CD_EMPRESA = "número da empresa" 
                    AND CD_ENDERECO LIKE '%B1CR%'
                  
--endereços úteis
/*
  Cross Docking: B1CR00001CR
  Expedição: B1EX00001AA  
*/
