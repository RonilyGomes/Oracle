CREATE OR REPLACE PROCEDURE processo_por_numero(proc_num IN varchar2) IS
CURSOR processoc IS SELECT cl.cliente_nome cliente, converte_sexo(cl.cliente_sexo) sexo, calcula_idade(cl.cliente_dataNascimento) idade, pr.processo_numero numero, va.vara_desc vara, ac.acao_desc acao, pr.processo_pendencias pendencias
  FROM processo pr
  JOIN cliente cl ON cl.cliente_id = pr.processo_cliente
  JOIN vara va ON va.vara_id = pr.processo_vara
  JOIN acao ac ON ac.acao_id = pr.processo_acao
  WHERE pr.processo_numero = proc_num;
BEGIN

  FOR p IN processoc LOOP
    dbms_output.put_line('Cliente: '||p.cliente);
    dbms_output.put_line('Sexo do Cliente: '||p.sexo);
    dbms_output.put_line('Idade do Cliente: '||p.idade);
    dbms_output.put_line('Número do Processo: '||p.numero);
    dbms_output.put_line('Vara: '||p.vara);
    dbms_output.put_line('Ação: '||p.acao);
  END LOOP;

  EXCEPTION
    WHEN no_data_found THEN
      dbms_output.put_line('Não há processo com esse número!');
    WHEN others THEN
      dbms_output.put_line('Erro desconhecido, contate a equipe!');
END;


-- procedure para inserção na tabela processo_status
create or replace procedure ins_processo_status(proc_num varchar2, fase varchar2) is
proc_id number;
f_id number;
begin
    select processo_id into proc_id from processo where processo_numero = proc_num;
    select fase_id into f_id from fase where fase_desc = fase;

    insert into processo_status values(proc_id, f_id, TO_DATE(sysdate, 'yyyy/mm/dd hh24:mi:ss'));
    
    Exception 
        when no_data_found then
            dbms_output.put_line('Sem dados para view!');
        when others then
            dbms_output.put_line('Erro desconhecido, contate a equipe!');
end;