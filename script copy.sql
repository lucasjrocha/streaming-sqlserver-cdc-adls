CREATE DATABASE CDC_2023;
GO
USE CDC_2023
GO
CREATE TABLE t1 (c1 INT IDENTITY, c2 VARCHAR(50), CONSTRAINT pk PRIMARY KEY(c1))
GO
USE CDC_2023
GO
EXEC sys.sp_cdc_enable_db
GO
USE CDC_2023
GO
EXEC sys.sp_cdc_enable_table @source_schema = N'dbo', @source_name = N't1', @role_name = NULL, @filegroup_name = N'PRIMARY'
GO

USE CDC_2023;
GO

-- Inserindo alguns dados na tabela t1
INSERT INTO t1 (c2) VALUES ('Primeiro registro');
INSERT INTO t1 (c2) VALUES ('Segundo registro');
INSERT INTO t1 (c2) VALUES ('Terceiro registro');

-- Atualizando o valor da coluna c2 para um registro específico
UPDATE t1 SET c2 = 'Novo valor para o primeiro registro' WHERE c1 = 1;

-- Inserindo mais dados
INSERT INTO t1 (c2) VALUES ('Quarto registro');
INSERT INTO t1 (c2) VALUES ('Quinto registro');

-- Atualizando o valor da coluna c2 para outro registro
UPDATE t1 SET c2 = 'Novo valor para o segundo registro' WHERE c1 = 2;

-- Inserindo mais dados
INSERT INTO t1 (c2) VALUES ('Sexto registro');

-- Atualizando o valor da coluna c2 para um registro específico
UPDATE t1 SET c2 = 'Novo valor para o sexto registro' WHERE c1 = 6;