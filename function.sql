CREATE OR REPLACE FUNCTION converte_sexo (sexo varchar2) RETURN varchar2 IS
sexo_excep exception;
BEGIN
	CASE upper(sexo)
		WHEN 'M' THEN
			RETURN 'Masculino';
		WHEN 'F' THEN
			RETURN 'Feminino';
		ELSE
			RAISE sexo_excep;
	END CASE;

	EXCEPTION
		WHEN sexo_excep THEN
			dbms_output.put_line('Este valor "'||sexo||'" para o sexo é inválido!');
END;

create or replace function calcula_idade
(nascimento date) return number is
begin
    return EXTRACT(YEAR FROM sysdate) - EXTRACT(YEAR FROM nascimento); 
end;