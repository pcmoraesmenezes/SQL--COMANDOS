DELETE FROM users WHERE id = 12;

DELETE FROM users WHERE id BETWEEN 13 AND 17;

DELETE FROM users WHERE id in (18,19);

DELETE FROM users WHERE id in(18,19) OR first_name ='Lynn';

DELETE FROM users WHERE id >= 110 AND last_name='Valentine';

DELETE FROM users WHERE id LIKE('1%3') -- REMOVE TODAS AS IDS TERMINADAS COM 3 E INICIADAS COM 1

SELECT * FROM users; -- AO FIM DE CADA EXCLUSÃO EXECUTE ESSE COMANDO PARA VERIFICAR A SITUAÇÃO ATUAL DA TABELA

-- DELETE É ESSENCIALEMNTE LIGADO AO WHERE COMO SE PDOE OBSERVAR NAS CONSULTAS ACIMA.

-- PODE-SE USAR OPERADORES LOGICOS, DE COMPARAÇÃO TUDO PARA SE REMOVER O QUE SE DESEJA, CONFORME VISTO NAS QUERIES (CONSULTAS)  ACIMA

-- NÃO É RECOMENDADO UTILIZAR OUTRAS COISAS ALÉM DAS PRIMARYS KEYS PARA REMOÇÃO, MAS AO UTILIZARMOS UMA INICIALMENTE E EM SEGUIDA FAZERMOS UMA OUTRA COMPARAÇÃO PODEMOS SER AINDA MAIS ESPECIFICOS COM O QUE SE DESEJA REMOVER

-- É EXTREMAMENTE IMPORTANTE ESPECIFICIDADE NA REMOÇAÕ DE DADOS POIS UMA VEZ QUE OS DADOS FOREM REMOVIDOS ELES SÃO EXCLUIDOS PERMANENTEMENTE, SOMENTE COM BACKUPS ISSO SE EXISTIR, PODE-SE RECUPERAR OS DADOS

