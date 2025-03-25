SET SERVEROUTPUT ON
DECLARE 
    v_media emp.sal%TYPE := 0;
BEGIN
    SELECT AVG(sal) INTO v_media
        FROM emp;
    IF v_media < 3000 THEN
        DBMS_OUTPUT.PUT_LINE ('N�o trabalhe aqui');
    ELSIF v_media < 3000 THEN
         DBMS_OUTPUT.PUT_LINE ('Que sal�rio horr�vel');
    ELSE
        DBMS_OUTPUT.PUT_LINE ('Hora depedir aumento');
    end if;
end;
/


SET SERVEROUTPUT ON
DECLARE
    v_opcao number(2) := &Escolha;
BEGIN
    case v_opcao
        WHEN 10 THEN DBMS_OUTPUT.PUT_LINE ('voc� escolheu 10');
        WHEN 20 THEN DBMS_OUTPUT.PUT_LINE ('voc� escolheu 20');
        WHEN 30 THEN DBMS_OUTPUT.PUT_LINE ('voc� escolheu 30');
    ELSE
        DBMS_OUTPUT.PUT_LINE ('op��o inv�lida');
    end case;
end;
/


DECLARE
    V_maior emp.sal%TYPE := 0;
    V_cont NUMBER := 1;
BEGIN
    SELECT MAX(sal) INTO v_maior
        FROM emp;
    LOOP
        INSERT INTO EMP (EMPNO, SAL) VALUES (v_cont, v_maior + v_cont * 100);
        v_cont := v_cont + 1;
        EXIT WHEN v_CONT > 4;
    END LOOP;
END;
/


DECLARE
    V_maior emp.sal%TYPE := 0;
    V_cont NUMBER := 1;
BEGIN
    SELECT MAX(sal) INTO v_maior
        FROM emp;
    WHILE  vcont < 5 LOOP
        INSERT INTO EMP (EMPNO, SAL) VALUES (v_cont, v_maior + v_cont * 100);
        v_cont := v_cont + 1;
    END LOOP;
END;
/

SELECT * FROM EMP;
ROLLBACK;


DECLARE
    V_maior emp.sal%TYPE := 0;
    V_cont NUMBER := 1;
BEGIN
    SELECT MAX(sal) INTO v_maior
        FROM emp;
    FOR i IN 1..4 LOOP
        INSERT INTO EMP (EMPNO, SAL) VALUES (i, v_maior + i * 100);
    END LOOP;
END;
/
SELECT * FROM EMP;
ROLLBACK;





























