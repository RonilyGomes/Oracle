create or replace view relatorio_processo_view as
select proc.processo_numero, proc.processo_pendencias, clt.cliente_nome, clt.cliente_cpf, 
       converte_sexo(clt.cliente_sexo) cliente_sexo, clt.cliente_dataNascimento, adv.adv_nome advogado, escr.esc_descricao escritorio , 
       fase.fase_desc fase, acao.acao_desc acao, vara.vara_desc vara
from processo proc
join cliente clt on proc.processo_cliente = clt.cliente_id
join acao on proc.processo_acao = acao.acao_id
join vara on proc.processo_vara = vara.vara_id
join processo_atendimento proc_atend on proc.processo_id = proc_atend.processo_id
join advogado_escritorio adv_esc on proc_atend.advogado_id = adv_esc.adv_id and proc_atend.escritorio_id = adv_esc.esc_id
join advogado adv on adv_esc.adv_id = adv.adv_id
join escritorio escr on adv_esc.esc_id = escr.esc_id
join processo_status proc_sta on proc_sta.processo_id = proc.processo_id
join fase on proc_sta.fase_id = fase.fase_id
WITH READ ONLY;

-- view de inserção
create or replace view processo_fase_view as
select proc.processo_numero , fase.fase_desc fase
from processo proc
join processo_status proc_sta on proc_sta.processo_id = proc.processo_id
join fase on proc_sta.fase_id = fase.fase_id;