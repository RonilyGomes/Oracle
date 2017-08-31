/*
-- Query: 
-- Date: 2017-07-12 13:31
*/
INSERT INTO acao VALUES (NULL,'Ação de Divórcio');
INSERT INTO acao VALUES (NULL,'Ação de Guarda');
INSERT INTO acao VALUES (NULL,'Alvará Judicial');
INSERT INTO acao VALUES (NULL,'Amparo ao Deficiente');
INSERT INTO acao VALUES (NULL,'Amparo ao Idoso');
INSERT INTO acao VALUES (NULL,'Aposentadoria Especial');
INSERT INTO acao VALUES (NULL,'Aposentadoria por Idade');
INSERT INTO acao VALUES (NULL,'Aposentadoria por Invalidez');
INSERT INTO acao VALUES (NULL,'Aposentadoria por Tempo de Contribuição');
INSERT INTO acao VALUES (NULL,'Auxilio Acidente');
INSERT INTO acao VALUES (NULL,'Auxilio Doença');
INSERT INTO acao VALUES (NULL,'Auxilio Reclusão');
INSERT INTO acao VALUES (NULL,'Cobrança de Multa');
INSERT INTO acao VALUES (NULL,'Cobrança de Seguro');
INSERT INTO acao VALUES (NULL,'Danos Morais e Materiais');
INSERT INTO acao VALUES (NULL,'DPVAT');
INSERT INTO acao VALUES (NULL,'Indenização');
INSERT INTO acao VALUES (NULL,'Insalubridade');
INSERT INTO acao VALUES (NULL,'Interdição');
INSERT INTO acao VALUES (NULL,'Pensão por Morte');
INSERT INTO acao VALUES (NULL,'Reintegração de Posse');
INSERT INTO acao VALUES (NULL,'Restituição');
INSERT INTO acao VALUES (NULL,'Revisão de Aposentadoria');
INSERT INTO acao VALUES (NULL,'Revisão de Auxilio Doença');
INSERT INTO acao VALUES (NULL,'Revisão de Beneficio');
INSERT INTO acao VALUES (NULL,'Revisão de Pensão por Morte');
INSERT INTO acao VALUES (NULL,'Salario Maternidade');
INSERT INTO acao VALUES (NULL,'Substituição de Tutela');
INSERT INTO acao VALUES (NULL,'Trabalhista');

/*
-- Query: 
-- Date: 2017-07-12 13:41
*/
INSERT INTO advogado VALUES (NULL,'Cauã Antonio Ryan Pereira','13298','PB','779.253.424-39',TO_DATE('1995-04-26', 'yyyy/mm/dd'),'(83) 99593-3440','(83) 3707-7517','58020-325','Parque Arruda Câmara','806','Roger','João Pessoa','PB');
INSERT INTO advogado VALUES (NULL,'Eduarda Lara Nina Almeida','13008','PB','682.306.704-71',TO_DATE('1990-05-11', 'yyyy/mm/dd'),'(83) 98428-4502',NULL,'58084-145','Rua José Dantas Almeida','158','Jardim Veneza','João Pessoa','PB');
INSERT INTO advogado VALUES (NULL,'Juliana Débora Helena Campos','11967','PB','412.309.024-90',TO_DATE('1965-10-25', 'yyyy/mm/dd'),'(83) 98906-4577','(83) 3862-8135','58020-105','Vila Onze de Dezembro','285','Roger','João Pessoa','PB');
INSERT INTO advogado VALUES (NULL,'Leonardo Joaquim Lima','10114','PB','880.684.774-03',TO_DATE('1970-11-16', 'yyyy/mm/dd'),'(83) 99221-7932','(83) 2715-2526','58055-275','Rua José Anunciação Santos','450','Mangabeira','João Pessoa','PB');
INSERT INTO advogado VALUES (NULL,'Alice Catarina Oliveira','12875','PB','789.877.844-87',TO_DATE('1981-04-03', 'yyyy/mm/dd'),'(83) 99531-9771','(83) 3951-1492','58303-445','Rua Lamartine Holanda Júnior','976','Municípios','Sapé','PB');
INSERT INTO advogado VALUES (NULL,'Marcelo Eduardo Ribeiro','14589','PB','108.632.464-19',TO_DATE('1988-07-02', 'yyyy/mm/dd'),'(83) 98393-9722','(83) 2692-5269','58309-688','Rua Compositor Luiz Gonzaga','807','Mário Andreazza','Bayeux','PB');

/*
-- Query: 
-- Date: 2017-07-28 15:12
*/

INSERT INTO cliente VALUES (NULL,'Paulo Cesar Alves','959.478.814-38','22.547.486-4','SSP-PB','M','(83) 98456-7810',NULL ,'Luana Olivia dos Santos',sysdate,'Brasileiro','C',NULL,'Professor','58808-090','Rua Marcos Augusto Gonçalves','644','Jardim Brasalia','Sousa','PB');
INSERT INTO cliente VALUES (NULL,'Raquel Marina Antonella Mendes','745.701.084-07','15.388.526-9','SSP-PB','F','(83) 99609-0860','(83) 3668-4489','Luana Nina Lara Alves',TO_DATE('2003/05/03', 'yyyy/mm/dd'),'Brasileiro','V',NULL,'Aposentada','58403-002','Rua Manoel Felix','554','Louzeiro','Campina Grande','PB');
INSERT INTO cliente VALUES (NULL,'Lavia Luana Las Pereira','004.141.724-00','13.465.634-9','SSP-PB','F','(83) 99624-4503','(83) 3652-5125','Luna Sophie Betina Monteiro',TO_DATE('1955-08-05', 'yyyy/mm/dd'),'Brasileiro','V','Faltou comprovante de residencia.','Aposentada','58080-080','Rua Francisca Muniz Diniz','171','Ernani Sátiro','João Pessoa','PB');
INSERT INTO cliente VALUES (NULL,'Bernardo Eduardo Breno Cardoso','714.222.964-07','49.721.272-9','SSP-PB','M','(83) 99354-0419','(83) 2645-4478','Gabrielly Sabrina Almeida',TO_DATE('1937-05-07', 'yyyy/mm/dd'),'Brasileiro','C',NULL,'Aposentado','58101-338','Rua Beija-Flor','593','Camboinha','Cabedelo','PB');
INSERT INTO cliente VALUES (NULL,'Lucca Kevin Gustavo Pinto','369.668.964-54','39.097.283-6','SEDDS-PB','M','(83) 98733-2428',NULL,'Lavia Lara Maria Mendes',TO_DATE('1995-08-21', 'yyyy/mm/dd'),'Brasileiro','S',NULL,'Estudante','58401-462','Rua Deputado Norberto Leal','354','Alto Branco','Campina Grande','PB');
INSERT INTO cliente VALUES (NULL,'Gustavo Leonardo de Paula','718.443.134-09','33.877.419-1','SSP-PB','M','(83) 99580-4969','(83) 2860-8748','Sabrina Evelyn Laura Ribeiro',TO_DATE('1988-08-26', 'yyyy/mm/dd'),'Brasileiro','C',NULL,'Médico','58031-190','Rua Fernando Ferrari','731','Pedro Gondim','João Pessoa','PB');
INSERT INTO cliente VALUES (NULL,'Las Sophie Isadora Lima','526.143.484-06','20.722.706-8','SEDDS-PB','F','(83) 98111-3288',NULL,'Flávia Helena Nascimento',TO_DATE('1988-03-02', 'yyyy/mm/dd'),'Brasileiro','S',NULL,'Dentista','58083-075','Rua Severina de Souza Cavalcanti','607','Indústrias','João Pessoa','PB');
INSERT INTO cliente VALUES (NULL,'Milena Joana Barbosa','563.464.234-52','48.121.719-8','SEDDS-PB','F','(83) 99388-6417',NULL,'Yasmin Valentina Alacia Pereira',TO_DATE('1952-04-22', 'yyyy/mm/dd'),'Brasileiro','D',NULL,'Aposentada','58059-105','Rua Josefa Andrade de Souza','178','Mangabeira','João Pessoa','PB');
INSERT INTO cliente VALUES (NULL,'Isabella Helena Clara Nascimento','684.830.064-05','41.824.378-5','SSP-PB','F','(83) 99936-9552','(83) 2508-5840','Sarah Sophie Monteiro',TO_DATE('1995-12-20', 'yyyy/mm/dd'),'Brasileiro','S',NULL,'Advogada','58066-065','Rua Luiz Mariano da Silva','814','Musumagro','João Pessoa','PB');
INSERT INTO cliente VALUES (NULL,'Joaquim Samuel Pinto','202.096.324-88','29.495.909-9','SEDDS-PB','M','(83) 98241-5602','(83) 2518-4243','Milena Lavania Luiza Almeida',TO_DATE('1970-01-21', 'yyyy/mm/dd'),'Brasileiro','D',NULL,'Advogado','58401-180','Rua Ouro Branco','578','Palmeira','Campina Grande','PB');


/*
-- Query: 
-- Date: 2017-07-12 13:44
*/
INSERT INTO escritorio VALUES (NULL,'João Pessoa','(83) 3988-4009','58030-972','Avenida Presidente Epitácio Pessoa 1705','188','Estados','João Pessoa','PB');
INSERT INTO escritorio VALUES (NULL,'Guarabira','(83) 3880-3423','58200-971','Rua Antonio Galdino Guedes',NULL,'Povoado','Guarabira','PB');
INSERT INTO escritorio VALUES (NULL,'Pedras de Fogo','(83) 3834-8600','58328-970','Praça Ronaldo Ribeiro da Costa','992','Centro','Pedras de Fogo','PB');
INSERT INTO escritorio VALUES (NULL,'Sapé','(83) 3542-7349','58340-971','Rua Principal','772','Centro','Sapé','PB');
INSERT INTO escritorio VALUES (NULL,'Belém','(83) 2519-4032','58255-970','Praça Seis de Setembro','363','Centro','Belém','PB');
INSERT INTO escritorio VALUES (NULL,'Bayeux','(83) 2572-9689','58309-808','Rua dos Vigilantes','547','Comercial Norte','Bayeux','PB');
INSERT INTO escritorio VALUES (NULL,'Mari','(83) 2971-2285','58345-970','Rua Antonio de Luna Freire','255','Centro','Mari','PB');
INSERT INTO escritorio VALUES (NULL,'Alhandra','(83) 2588-7082','58320-973','Rua Projetada',NULL,'Centro','Alhandra','PB');
INSERT INTO escritorio VALUES (NULL,'Campina Grande','(83) 3537-3864','58430-140','Rua Sebastião Martins de Oliveira','695','Bodocongó','Campina Grande','PB');

/*
-- Query: 
-- Date: 2017-07-12 13:44
*/
INSERT INTO fase VALUES (NULL,'Entregue no Escritório');
INSERT INTO fase VALUES (NULL,'Em Análise');
INSERT INTO fase VALUES (NULL,'Aguardando CI');
INSERT INTO fase VALUES (NULL,'Pendente');
INSERT INTO fase VALUES (NULL,'Devolução');
INSERT INTO fase VALUES (NULL,'Aprovado para Petição');
INSERT INTO fase VALUES (NULL,'Peticionar');
INSERT INTO fase VALUES (NULL,'Peticionado');
INSERT INTO fase VALUES (NULL,'Ajuizar');
INSERT INTO fase VALUES (NULL,'Ajuizado');
INSERT INTO fase VALUES (NULL,'Diligência');
INSERT INTO fase VALUES (NULL,'Perícia');
INSERT INTO fase VALUES (NULL,'Perícia Remarcada');
INSERT INTO fase VALUES (NULL,'Audiência Conciliatória');
INSERT INTO fase VALUES (NULL,'Audiência Cancelada');
INSERT INTO fase VALUES (NULL,'Audiência Instrutória');
INSERT INTO fase VALUES (NULL,'Audiência Remarcada');
INSERT INTO fase VALUES (NULL,'Audiência Uno');
INSERT INTO fase VALUES (NULL,'Audiência de Interdição');
INSERT INTO fase VALUES (NULL,'Audiência de Interdição Realizada');
INSERT INTO fase VALUES (NULL,'Acordo');
INSERT INTO fase VALUES (NULL,'Acordo sem Audiência');
INSERT INTO fase VALUES (NULL,'Conclusos para Sentença');
INSERT INTO fase VALUES (NULL,'Sentença Procedente');
INSERT INTO fase VALUES (NULL,'Sentença Procedente em Parte');
INSERT INTO fase VALUES (NULL,'Sentença Improcedente');
INSERT INTO fase VALUES (NULL,'Sentença Improcedente com R.M.');
INSERT INTO fase VALUES (NULL,'Extindo sem R.M.');
INSERT INTO fase VALUES (NULL,'Recurso do INSS');
INSERT INTO fase VALUES (NULL,'Recurso do Autor');
INSERT INTO fase VALUES (NULL,'Oferecidas Contra-Razões');
INSERT INTO fase VALUES (NULL,'Embargos de Declaração');
INSERT INTO fase VALUES (NULL,'Pedido de Uniformização');
INSERT INTO fase VALUES (NULL,'Sessão na Turma');
INSERT INTO fase VALUES (NULL,'Julgado na Turma Acordão');
INSERT INTO fase VALUES (NULL,'Recurso');
INSERT INTO fase VALUES (NULL,'Recurso INSS Improvido');
INSERT INTO fase VALUES (NULL,'Recurso Autor Improvido');
INSERT INTO fase VALUES (NULL,'Recurso Autor Provido');
INSERT INTO fase VALUES (NULL,'Devolvido pela Turma');
INSERT INTO fase VALUES (NULL,'Benefício Implantado');
INSERT INTO fase VALUES (NULL,'Validação RPV');
INSERT INTO fase VALUES (NULL,'Pago RPV');
INSERT INTO fase VALUES (NULL,'Processo Findo');
INSERT INTO fase VALUES (NULL,'Desistência');
INSERT INTO fase VALUES (NULL,'Re-análise');
INSERT INTO fase VALUES (NULL,'Aguardando Agendamento');
INSERT INTO fase VALUES (NULL,'Apelação');
INSERT INTO fase VALUES (NULL,'Arquivo Morto');
INSERT INTO fase VALUES (NULL,'Audiência de Realizações Finais');
INSERT INTO fase VALUES (NULL,'Audiência Realizada');
INSERT INTO fase VALUES (NULL,'Baixa Definitiva');
INSERT INTO fase VALUES (NULL,'Conciliação Rejeitada');
INSERT INTO fase VALUES (NULL,'Perícia Social');
INSERT INTO fase VALUES (NULL,'Perícia Médica');
INSERT INTO fase VALUES (NULL,'Perícia Trabalhista');
INSERT INTO fase VALUES (NULL,'Perícia DPVAT');

/*
-- Query: 
-- Date: 2017-07-12 13:45
*/
INSERT INTO vara VALUES (NULL,'10º Vara Civil de João Pessoa');
INSERT INTO vara VALUES (NULL,'10º Vara do Trabalho de João Pessoa');
INSERT INTO vara VALUES (NULL,'12º Vara Civil de João Pessoa');
INSERT INTO vara VALUES (NULL,'10º Vara Federal de Monteiro');
INSERT INTO vara VALUES (NULL,'12º Vara Federal de Guarabira');
INSERT INTO vara VALUES (NULL,'13º Vara Federal de João Pessoa');
INSERT INTO vara VALUES (NULL,'10º Vara Federal de Patos');
INSERT INTO vara VALUES (NULL,'15º Vara Federal de Sousa');
INSERT INTO vara VALUES (NULL,'1º Vara Civil de João Pessoa');
INSERT INTO vara VALUES (NULL,'1º Vara Civil de Campina Grande');
INSERT INTO vara VALUES (NULL,'1º Vara de Família de João Pessoa');
INSERT INTO vara VALUES (NULL,'1º Vara da Fazenda de João Pessoa');
INSERT INTO vara VALUES (NULL,'1º Vara Mista de Itabaiana');
INSERT INTO vara VALUES (NULL,'1º Vara Mista de Mamanguape');
INSERT INTO vara VALUES (NULL,'1º Vara Mista de Sapé');
INSERT INTO vara VALUES (NULL,'1º Vara Regional de Mangabeira');
INSERT INTO vara VALUES (NULL,'1º Juizado Especial Misto de Mangabeira');
INSERT INTO vara VALUES (NULL,'2º Vara da Comarca de Cuité');
INSERT INTO vara VALUES (NULL,'2º Vara de Guarabira');
INSERT INTO vara VALUES (NULL,'2º Vara de Itabaiana');
INSERT INTO vara VALUES (NULL,'2º Vara de Piancão');
INSERT INTO vara VALUES (NULL,'2º Vara do Trabalho de Campina Grande');
INSERT INTO vara VALUES (NULL,'2º Vara do Trabalho de João Pessoa');
INSERT INTO vara VALUES (NULL,'2º Vara Mista de Bayeux');
INSERT INTO vara VALUES (NULL,'3º Vara da Comarca de Cabedelo');
INSERT INTO vara VALUES (NULL,'3º Juizado Especial Civil de João Pessoa');
INSERT INTO vara VALUES (NULL,'4º Vara de Guarabira');

/*
-- Query: 
-- Date: 2017-07-12 13:43
*/
INSERT INTO advogado_escritorio VALUES (1,5);
INSERT INTO advogado_escritorio VALUES (6,1);
INSERT INTO advogado_escritorio VALUES (3,9);
INSERT INTO advogado_escritorio VALUES (1,9);
INSERT INTO advogado_escritorio VALUES (6,2);
INSERT INTO advogado_escritorio VALUES (4,3);
INSERT INTO advogado_escritorio VALUES (4,1);
INSERT INTO advogado_escritorio VALUES (5,6);
INSERT INTO advogado_escritorio VALUES (6,6);
INSERT INTO advogado_escritorio VALUES (2,4);

/*
-- Query: 
-- Date: 2017-07-12 13:43
*/
insert into processo VALUES(NULL, 1, 5, 3, '45754', NULL);
insert into processo VALUES(NULL, 1, 18, 19, '45755', NULL);
insert into processo VALUES(NULL, 2, 14, 5, '45756', NULL);
insert into processo VALUES(NULL, 3, 25, 28, '45757', NULL);
insert into processo VALUES(NULL, 4, 15, 27, '45758', NULL);
insert into processo VALUES(NULL, 5, 26, 21, '45759', NULL);
insert into processo VALUES(NULL, 6, 19, 18, '45760', NULL);
insert into processo VALUES(NULL, 7, 21, 20, '45761', NULL);
insert into processo VALUES(NULL, 8, 22, 21, '45762', NULL);
insert into processo VALUES(NULL, 9, 2, 1, '45763', NULL);
insert into processo VALUES(NULL, 10, 3, 2, '45764', NULL);

/*
-- Query: 
-- Date: 2017-07-12 13:43
*/
insert into processo_status VALUES(1, 1, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(1, 2, TO_DATE('2003/05/03 22:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(2, 1, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(2, 2, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(2, 3, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(3, 1, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(4, 1, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(5, 1, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(6, 1, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(7, 1, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(8, 1, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(9, 1, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(10, 1, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(11, 1, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
insert into processo_status VALUES(11, 4, TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));



/*
-- Query: 
-- Date: 2017-07-12 13:43
*/
insert into processo_atendimento VALUES(1, 5, 1, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(1, 9, 3, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(1, 6, 5, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(2, 2, 6, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(3, 3, 4, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(4, 1, 4, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(5, 6, 5, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(6, 3, 4, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(7, 9, 3, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(8, 5, 1, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(9, 1, 4, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(9, 2, 6, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(10, 6, 5, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));
insert into processo_atendimento VALUES(11, 3, 4, sysdate, TO_DATE('2018/05/03', 'yyyy/mm/dd'));