-- ORACLE
CREATE TABLE atendimentos (
 id  RAW(16) DEFAULT SYS_GUID() NOT NULL,
 assunto VARCHAR2(100) NOT NULL,
 ano NUMBER(4)
);

INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2021');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao produto','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao atendimento','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
INSERT INTO atendimentos (assunto, ano) VALUES ('Reclamacao cadastro','2022');
COMMIT;

--
/*
Questão 4
Uma empresa registra os atendimentos por assunto e por ano em uma tabela.
Você precisa escrever um comando select que retorne:
  - o assunto,
  - o ano
  - e a quantidade de ocorrências,
  - filtrando apenas assuntos que tenham mais de 3 ocorrências no mesmo ano.

O comando deve ordenar os registros por ANO e por QUANTIDADE de ocorrências de forma DECRESCENTE.*/

--Dados existentes na tabela:
select * from atendimentos;

--Resultado esperado:
ASSUNTO                 ANO   QUANTIDADE
Reclamacao cadastro     2022  8
Reclamação produto      2021  6
Reclamacao atendimento  2021  4

--Query Final Teste:
with a as (
  select assunto, ano, COUNT(*) as QUANTIDADE from atendimentos a
  group by assunto, ano
  having COUNT(*) > 3
)
select * from a order by 3 desc;
