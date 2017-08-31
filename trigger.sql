create or replace trigger ins_processo_view
INSTEAD OF insert on processo_fase_view
FOR EACH ROW    
begin
    ins_processo_status(:new.processo_numero, :new.fase);
end;
